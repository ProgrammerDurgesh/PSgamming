package controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/logout")
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