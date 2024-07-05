package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.DatabaseConfiguration;
import common.EmailConfig;
import common.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UserService;

public class Subscriber extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		UserService userService = new UserService();
		User user = userService.getUserByEmail(email);
		Integer userId=user.getId();
		 DatabaseConfiguration configuration = new DatabaseConfiguration();
		 String subscriptionMessage = "Welcome to PSgaming!\n\n" +
				    "Thank you for subscribing to PSgaming updates. Stay tuned for the latest news, offers, and gaming insights.\n\n" +
				    "We look forward to keeping you informed!\n\n" +
				    "Best regards,\n" +
				    "PSgaming";

	        Connection connection = null;
	        try {
	            connection = configuration.getConnection();

	            // Insert into database
	            String insertSQL = "INSERT INTO T_SUBSCRIBER (email, logeduserId) VALUES (?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
	            preparedStatement.setString(1, email);
	            preparedStatement.setInt(2, userId);
	            int rowsInserted = preparedStatement.executeUpdate();
	            if (rowsInserted > 0) {
	                System.out.println("Subscriber record inserted successfully!");
	            } else {
	                System.out.println("Failed to insert subscriber record.");
	            }
	            EmailConfig.sendEmail(email, "Welcome to PSgaming Updates!", subscriptionMessage);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            if (connection != null) {
	                try {
	                    connection.close();
	                } catch (SQLException e) {
	                    e.printStackTrace();
	                }
	            }
	        }
	}
}
