package controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import common.DatabaseConfiguration;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*@WebServlet("/userInfo")*/
public class UserInfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	System.out.println("ok user info ");
    	String userId = request.getParameter("userId");
        String gameName = request.getParameter("gameName");
        String priceStr = request.getParameter("price");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String currency = request.getParameter("currency");
        String streetAddress = request.getParameter("streetAddress");
        String city = request.getParameter("city");
        String stateCode = request.getParameter("stateCode");
        String country = request.getParameter("country");
        String zipcode = request.getParameter("zipcode");

        BigDecimal price = null;
        if (priceStr != null && !priceStr.isEmpty()) {
            try {
                price = new BigDecimal(priceStr);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        DatabaseConfiguration configuration = new DatabaseConfiguration();
        Connection connection = null;

        try {
            connection = configuration.getConnection();

            // Insert into database
            String insertSQL = "INSERT INTO user_info (game_name, price, email, phone_number, currency, street_address, city, state_code, country, zipcode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
            preparedStatement.setString(1, gameName);
            preparedStatement.setBigDecimal(2, price);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, phoneNumber);
            preparedStatement.setString(5, currency);
            preparedStatement.setString(6, streetAddress);
            preparedStatement.setString(7, city);
            preparedStatement.setString(8, stateCode);
            preparedStatement.setString(9, country);
            preparedStatement.setString(10, zipcode);
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

        // Redirect to OTP verification page
        String otpVerificationPage = "Otp-verification.jsp";
        request.setAttribute("email", email);
        System.out.println("The email is: " + email);
        RequestDispatcher dispatcher = request.getRequestDispatcher(otpVerificationPage);
        dispatcher.forward(request, response);
    }
}
