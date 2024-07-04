package controller;

import java.io.IOException;
import java.util.List;

import common.GameEntity;
import common.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;
import service.GameService;
import service.UserService;

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

        if (user != null) {
            String storedHashedPassword = user.getPassword(); // Get hashed password from database

            // Check if hashed passwords match
            if (BCrypt.checkpw(password, storedHashedPassword)) {
                // Passwords match, proceed with login
                GameService gameService = new GameService();
                List<GameEntity> allGames = gameService.getAllGames();
                request.getSession().setAttribute("allGames", allGames);
                request.getSession().setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                // Authentication failed
                // Redirect with error message for bad credentials
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials");
            }
        } else {
            // User not found, redirect with error message for bad credentials
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials");
        }
    }
}
