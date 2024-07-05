package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import org.mindrot.jbcrypt.BCrypt;

import common.DatabaseConfiguration;
import common.EmailConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*@WebServlet("/signup")*/
public class SignupServlet extends HttpServlet {
	private static final String NUMBERS = "0123456789";
	private static final int OTP_LENGTH = 6;
	private static Random random = new Random();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String city = request.getParameter("city");
		String mobileNumber = request.getParameter("mobileNumber");
		String password = request.getParameter("password");
		String streetAddress = request.getParameter("streetAddress");
		String stateCode = request.getParameter("stateCode");
		String zipCode = request.getParameter("zipcode");
		String otpForDbSave = generateOTP();
		String optForEmailSendFormatted = "Dear " + firstName + " " + lastName + ",\n\n" + "OTP is " + otpForDbSave
				+ " for verifying your registration details. This can be used once.\n\n" + "Thank You\n" + "PSgaming";

		// Hash the password
		String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

		// Database connection and insertion
		DatabaseConfiguration configuration = new DatabaseConfiguration();
		Connection connection = null;

		try {
			connection = configuration.getConnection();

			// Insert into database
			String insertSQL = "INSERT INTO T_USERS (FirstName, LastName, Email, Country, City, Password, MobileNumber, otp, StreetAddress, StateCode, ZipCode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
			preparedStatement.setString(1, firstName);
			preparedStatement.setString(2, lastName);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, country);
			preparedStatement.setString(5, city);
			preparedStatement.setString(6, hashedPassword);
			preparedStatement.setString(7, mobileNumber);
			preparedStatement.setString(8, otpForDbSave);
			preparedStatement.setString(9, streetAddress);
			preparedStatement.setString(10, stateCode);
			preparedStatement.setString(11, zipCode);
			preparedStatement.executeUpdate();

			// Send OTP email
			EmailConfig.sendEmail(email, "OTP Verification", optForEmailSendFormatted);
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

		// Redirect to OTP verification page
		String otpVerificationPage = "Otp-varification.jsp";
		request.setAttribute("email", email);
		RequestDispatcher dispatcher = request.getRequestDispatcher(otpVerificationPage);
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
		System.out.println("okay google");
		System.out.println(request.toString());
	}

	public String generateOTP() {
		StringBuilder sb = new StringBuilder(OTP_LENGTH);

		for (int i = 0; i < OTP_LENGTH; i++) {
			int index = random.nextInt(NUMBERS.length());
			char digit = NUMBERS.charAt(index);
			sb.append(digit);
		}

		return sb.toString();
	}
}
