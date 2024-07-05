package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.regex.Pattern;

import common.DatabaseConfiguration;
import common.EmailConfig;
import common.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UserService;

public class Subscriber extends HttpServlet {

	private static final String EMAIL_REGEX = "^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");

		// Server-side email validation
		if (email == null || !Pattern.matches(EMAIL_REGEX, email)) {
			response.sendRedirect(request.getContextPath() + "/index.jsp?status=invalid_email");
			return;
		}

		UserService userService = new UserService();
		User user = userService.getUserByEmail(email);
		int userId = (user != null) ? user.getId() : 0;
		boolean emailAlreadyRegistered = (user != null);

		if (emailAlreadyRegistered) {
			// Redirect to index.jsp with duplicate entry parameter
			response.sendRedirect(request.getContextPath() + "/index.jsp?status=duplicate");
			return;
		}

		DatabaseConfiguration configuration = new DatabaseConfiguration();
		String subscriptionMessage = "Welcome to PSgaming!\n\n"
				+ "Thank you for subscribing to PSgaming updates. Stay tuned for the latest news, offers, and gaming insights.\n\n"
				+ "We look forward to keeping you informed!\n\n" + "Best regards,\n" + "PSgaming";

		Connection connection = null;
		boolean success = false;

		try {
			connection = configuration.getConnection();

			// Insert into database
			String insertSQL = "INSERT INTO T_SUBSCRIBER (email, logeduserId) VALUES (?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, email);
			preparedStatement.setInt(2, userId);
			int rowsInserted = preparedStatement.executeUpdate();
			if (rowsInserted > 0) {
				success = true;
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

		// Redirect to index.jsp with appropriate status parameter
		if (success) {
			response.sendRedirect(request.getContextPath() + "/index.jsp?status=success");
		} else {
			response.sendRedirect(request.getContextPath() + "/index.jsp?status=failure");
		}
	}

}
