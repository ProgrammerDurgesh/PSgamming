package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import common.User;
import service.UserService;

@WebServlet("/login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        UserService userService = new UserService();
        User user = userService.getUserByEmail(email);

        if (user != null && password.equals(user.getPassword())) {
            // Authentication successful
            request.getSession().setAttribute("user", user); // Store user in session
            response.sendRedirect(request.getContextPath() + "/dashboard.jsp"); // Redirect to dashboard or desired page
        } else {
            // Authentication failed
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials"); // Redirect with error message
        }
    }
}
