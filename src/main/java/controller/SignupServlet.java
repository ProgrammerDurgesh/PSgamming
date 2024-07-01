package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.EmailConfig;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	 private static final String NUMBERS = "0123456789";
	    private static final int OTP_LENGTH = 6;
	    private static Random random = new Random();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        System.out.println(firstName);
        String lastName = request.getParameter("lastName");
        System.out.println(lastName);
        String email = request.getParameter("email");
        System.out.println(email);
        String country = request.getParameter("country");
        System.out.println(country);
        String city = request.getParameter("city");
        System.out.println(city);
        String mobileNumber = request.getParameter("mobileNumber");
        System.out.println(mobileNumber);
        System.out.println(this.generateOTP());
        
        
        EmailConfig.sendEmail(email, "otp Verification", this.generateOTP());
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>Signup Successful</h1>");
        out.println("<p>First Name: " + firstName + "</p>");
        out.println("<p>Last Name: " + lastName + "</p>");
        out.println("<p>Email: " + email + "</p>");
        out.println("<p>Country: " + country + "</p>");
        out.println("<p>City: " + city + "</p>");
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