package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.UserService;

/*@WebServlet("/otp") */
public class OtpVarification extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserService service=new UserService();
		String otp=req.getParameter("otp");
		String email = req.getParameter("email");
		System.out.println(otp);
		System.out.println(email);
		service.verifyOTP(email,Integer.parseInt(otp));
		// Redirect to OTP verification page
        String otpVerificationPage = "login.jsp";
        String result="signup successfully";
        RequestDispatcher dispatcher = req.getRequestDispatcher(otpVerificationPage);
        dispatcher.forward(req, resp);
	}

}
