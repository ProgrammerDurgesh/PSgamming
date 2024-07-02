package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DatabaseConfiguration;
import common.User;

public class UserService {
    public User getUserByEmail(String email) {
        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        User user = null;

        try {
            connection = configuration.getConnection();
            String selectSQL = "SELECT * FROM users WHERE Email = ?";
            preparedStatement = connection.prepareStatement(selectSQL);
            preparedStatement.setString(1, email);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                user = new User();
                user.setFirstName(resultSet.getString("FirstName"));
                user.setLastName(resultSet.getString("LastName"));
                user.setEmail(resultSet.getString("Email"));
                user.setCountry(resultSet.getString("Country"));
                user.setCity(resultSet.getString("City"));
                user.setMobileNumber(resultSet.getString("MobileNumber"));
                // Do not retrieve password for security reasons
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
}
