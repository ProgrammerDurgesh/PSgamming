package controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.DatabaseConfiguration;
import common.EmailConfig;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	 private static final String NUMBERS = "0123456789";
	    private static final int OTP_LENGTH = 6;
	    private static Random random = new Random();
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String email = request.getParameter("email");
	        String country = request.getParameter("country");
	        String city = request.getParameter("city");
	        String mobileNumber = request.getParameter("mobileNumber");
	        String password = request.getParameter("password");
	        String otp = this.generateOTP();

	        // Print to console (for debugging)
	        System.out.println(firstName);
	        System.out.println(lastName);
	        System.out.println(email);
	        System.out.println(country);
	        System.out.println(city);
	        System.out.println(mobileNumber);
	        System.out.println(password);
	        System.out.println(otp);

	        // Assuming your database insertion and email sending logic is correct
	        DatabaseConfiguration configuration = new DatabaseConfiguration();
	        Connection connection = null;

	        try {
	            connection = configuration.getConnection();

	            // Insert into database
	            String insertSQL = "INSERT INTO users (FirstName, LastName, Email, Country, City, Password, MobileNumber, otp) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
	            preparedStatement.setString(1, firstName);
	            preparedStatement.setString(2, lastName);
	            preparedStatement.setString(3, email);
	            preparedStatement.setString(4, country);
	            preparedStatement.setString(5, city);
	            preparedStatement.setString(6, password);
	            preparedStatement.setString(7, mobileNumber);
	            preparedStatement.setString(8, otp);
	            preparedStatement.executeUpdate();
	            EmailConfig.sendEmail(email, "OTP Verification", otp);
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
	        System.out.println("the email is:"+email);
	        RequestDispatcher dispatcher = request.getRequestDispatcher(otpVerificationPage);
	        dispatcher.forward(request, response);
	    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
        System.out.println("okay google");
        System.out.println(request.toString());
    }
    public  String generateOTP() {
        StringBuilder sb = new StringBuilder(OTP_LENGTH);

        for (int i = 0; i < OTP_LENGTH; i++) {
            int index = random.nextInt(NUMBERS.length());
            char digit = NUMBERS.charAt(index);
            sb.append(digit);
        }

        return sb.toString();
    }
}