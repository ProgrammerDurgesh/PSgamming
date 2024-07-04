package controller;

import java.io.IOException;
import java.util.List;

import common.GameEntity;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.GameService;
public class Game extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		System.out.println("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"); 
	    GameService gameService = new GameService();
	    List<GameEntity> allGames = gameService.getAllGames();
	    request.setAttribute("allGames", allGames);
	    RequestDispatcher dispatcher = request.getRequestDispatcher("user-detail.jsp");
	    dispatcher.forward(request, response);

	    System.out.println("Servlet executed successfully");
	    System.out.println(request.toString());
	}

}
