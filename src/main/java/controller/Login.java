package controller;

import java.io.IOException;
import java.util.List;

import common.GameEntity;
import common.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
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
            String password2 = user.getPassword();
            // Check if user exists and password is correct
            if (password.equalsIgnoreCase(password2)) {
            	GameService gameService = new GameService();
        	    List<GameEntity> allGames = gameService.getAllGames();
        	    request.getSession().setAttribute("allGames", allGames);
                request.getSession().setAttribute("user", user);
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            } else {
                // Authentication failed
                // Redirect with error message
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials");
            }
        } else {
            response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalidCredentials");
        }
    }
}
