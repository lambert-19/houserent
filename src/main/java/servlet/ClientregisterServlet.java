package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconnection.DbCon;

/**
 * Servlet implementation class Clientregister
 */
@WebServlet(name = "Clientregistration", urlPatterns = { "/Clientregistration" })
public class ClientregisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out=response.getWriter()){
			//fetch DAta from registration page//

			String fname=request.getParameter("first_name");
			String lname=request.getParameter("last_name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
            

		try {
			Client2 clientModel=new Client2(fname,lname,email,password,phone);
			ClientRegisterDao cd=new ClientRegisterDao(DbCon.getConnection());
		if(cd.clientregister(clientModel)) {
			response.sendRedirect("clientlogin.jsp");
		}
		else {
			String errorMessage="User Exist!";
			HttpSession regSession=request.getSession();
			regSession.setAttribute("regError", errorMessage);
			response.sendRedirect("clientRegistration.jsp");
		}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}

}
