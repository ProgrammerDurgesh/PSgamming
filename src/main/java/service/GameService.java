package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.DatabaseConfiguration;

public class GameService {
	private DatabaseConfiguration configuration = new DatabaseConfiguration();
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;

	public String getGameByGameIdAndName(String id, String gameName) {
		String price=null;
		ResultSet resultSet = null;
		try {
			connection = configuration.getConnection();
			String query;
			if (id != null && gameName != null) {
				query = "SELECT * FROM games WHERE id = ? AND name = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, id);
				preparedStatement.setString(2, gameName);
			} else if (id != null) {
				query = "SELECT * FROM games WHERE id = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, id);
			} else if (gameName != null) {
				query = "SELECT * FROM games WHERE name = ?";
				preparedStatement = connection.prepareStatement(query);
				preparedStatement.setString(1, gameName);
			} else {
				return "Both id and gameName cannot be null";
			}
			resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				int gameId = resultSet.getInt("id");
				String name = resultSet.getString("name");
				 price = String.valueOf(resultSet.getDouble("price"));
				int game_id = resultSet.getInt("game_id");
				// Construct result string or process the retrieved data
				return "ID: " + gameId + ", Name: " + name + ", Price: " + price + ", Game ID: " + game_id;
			} else {
				if (id != null) {
					return "No game found with id: " + price;
				} else if (gameName != null) {
					return "No game found with name: " + price;
				} else {
					return "No game found with provided criteria";
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return "Error: " + e.getMessage();
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
	}

}
