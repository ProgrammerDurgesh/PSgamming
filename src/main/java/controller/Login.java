
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
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieve email and password from the request
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Get user by email from the UserService
        UserService userService = new UserService();
        User user = userService.getUserByEmail(email);
        String password2 = user.getPassword();
        // Check if user exists and password is correct
        if (user != null && password.equalsIgnoreCase(password2)) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        } else {
            // Authentication failed
            // Redirect with error message
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials");
        }
        System.out.println("login s,mkdfhdskfhsdjkfndfhnsdfjk");
    }
}
