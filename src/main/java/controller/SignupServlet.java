package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import at.favre.lib.crypto.bcrypt.BCrypt;
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
	        //String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
	        DatabaseConfiguration configuration = new DatabaseConfiguration();
	        Connection connection = null;

	        try {
	            connection = configuration.getConnection();
	            System.out.println(connection);

	            // Insert into database
	            String insertSQL = "INSERT INTO users (FirstName, LastName, Email, Country, City, Password, MobileNumber) VALUES (?, ?, ?, ?, ?, ?, ?)";
	            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
	            preparedStatement.setString(1, firstName);
	            preparedStatement.setString(2, lastName);
	            preparedStatement.setString(3, email);
	            preparedStatement.setString(4, country);
	            preparedStatement.setString(5, city);
	            preparedStatement.setString(6, password);
	            preparedStatement.setString(7, mobileNumber);
	            preparedStatement.executeUpdate();
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


	        // Send OTP email
	        EmailConfig.sendEmail(email, "OTP Verification", otp);

	        // Respond with HTML
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        out.println("<html><body>");
	        out.println("<h1>Signup Successful</h1>");
	        out.println("<p>First Name: " + firstName + "</p>");
	        out.println("<p>Last Name: " + lastName + "</p>");
	        out.println("<p>Email: " + email + "</p>");
	        out.println("<p>Country: " + country + "</p>");
	        out.println("<p>City: " + city + "</p>");
	        out.println("<p>Password: " + password + "</p>");
	        if (mobileNumber != null && !mobileNumber.isEmpty()) {
	            out.println("<p>Mobile Number: " + mobileNumber + "</p>");
	        }
	        out.println("</body></html>");
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