package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/*@WebServlet("/logout")*/
public class Logout extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Invalidate the session, effectively logging out the user
        request.getSession().invalidate();
        System.out.println("ok bye bye ");
        
        // Redirect to the login page or any other appropriate page after logout
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
}