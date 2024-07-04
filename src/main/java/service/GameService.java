package service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import common.DatabaseConfiguration;
import common.GameEntity;
import okhttp3.Credentials;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public class GameService {
	private DatabaseConfiguration configuration = new DatabaseConfiguration();
	private Connection connection = null;
	private PreparedStatement preparedStatement = null;

	public String getGameByGameIdAndName(String id, String gameName) {
		String price = null;
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

	private OkHttpClient httpClient = new OkHttpClient.Builder().connectTimeout(10, TimeUnit.SECONDS)
			.writeTimeout(10, TimeUnit.SECONDS).readTimeout(10, TimeUnit.SECONDS).build();

	public List<GameEntity> getAllGames() {
		System.out.println("123456666666666654321234567899876543234567890987654");
		List<GameEntity> games = new ArrayList<GameEntity>();
		ResultSet resultSet = null;
		try {
			connection = configuration.getConnection();
			String query = "SELECT * FROM games";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				int gameId = resultSet.getInt("id");
				String name = resultSet.getString("name");
				double price = resultSet.getDouble("price");
				int game_id = resultSet.getInt("game_id");
				games.add(new GameEntity(gameId, name, price, game_id));
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
		return games;
	}

	public Double getGamePrice() throws IOException {
		Request.Builder builder = new Request.Builder();
		String username = "paysecuretechnolgoiesltd60274863";
		String password = "olipalff9urhhr4nadritf259d";
		builder.url("https://xecdapi.xe.com/v1/convert_from.json/?to=" + "INR" + "&from=" + "USD" + "&amount=1")
				.addHeader("Authorization", Credentials.basic(username, password))
				.addHeader("Accept", "application/json")
				// .addHeader("User-Agent", "PaySecure")
				.addHeader("Cache-Control", "no-cache");

		Request request = builder.build();
		Response response = httpClient.newCall(request).execute();
		String responseBody = response.body().string();

		return null;

	}

}
