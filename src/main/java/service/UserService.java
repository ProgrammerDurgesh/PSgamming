package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DatabaseConfiguration;
import common.User;

public class UserService {
	private DatabaseConfiguration configuration = new DatabaseConfiguration();
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;

	public static User getUserByEmail(String email) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;

		try {
			DatabaseConfiguration configuration = new DatabaseConfiguration();
			connection = configuration.getConnection();

			String selectSQL = "SELECT * FROM T_USERS WHERE Email = ? AND Active = 1";
			preparedStatement = connection.prepareStatement(selectSQL);
			preparedStatement.setString(1, email);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt("Id"));
				user.setFirstName(resultSet.getString("FirstName"));
				user.setLastName(resultSet.getString("LastName"));
				user.setEmail(resultSet.getString("Email"));
				user.setCountry(resultSet.getString("Country"));
				user.setCity(resultSet.getString("City"));
				user.setMobileNumber(resultSet.getString("MobileNumber"));
				// Avoid retrieving sensitive data like password in production
				user.setPassword(resultSet.getString("Password"));
				user.setStreetAddress(resultSet.getString("StreetAddress"));
				user.setStateCode(resultSet.getString("StateCode"));
				user.setZipCode(resultSet.getString("ZipCode"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return user;
	}

	public boolean verifyOTP(String email, Integer otp) {
		String selectSQL = "SELECT otp FROM T_USERS WHERE Email = ?";
		String updateSQL = "UPDATE T_USERS SET otp = NULL, Active = TRUE WHERE Email = ?";


		try (Connection connection = configuration.getConnection();
				PreparedStatement selectStatement = connection.prepareStatement(selectSQL);
				PreparedStatement updateStatement = connection.prepareStatement(updateSQL)) {

			selectStatement.setString(1, email);

			try (ResultSet resultSet = selectStatement.executeQuery()) {
				if (resultSet.next()) {
					int storedOTP = resultSet.getInt("otp");
					if (otp.equals(storedOTP)) {
						updateStatement.setString(1, email);
						updateStatement.executeUpdate();
						System.out.println("updated otp .....");
						return true;
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
