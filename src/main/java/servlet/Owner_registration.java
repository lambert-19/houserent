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

import com.mysql.cj.jdbc.Blob;

import dbconnection.DbCon;

/**
 * Servlet implementation class Owner_registration
 */
@WebServlet("/Owner_registration")
public class Owner_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out=response.getWriter()){
			//fetch DAta from registration page//

			String fname=request.getParameter("first_name");
			String lname=request.getParameter("last_name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
			


		try {
			Client2 ownerModel=new Client2(fname,lname,email,password,phone);
			OregisterD od=new OregisterD(DbCon.getConnection());
		if(od.ownerregister(ownerModel)) {
			response.sendRedirect("landlordlogin.jsp");
		}
		else {
			String errorMessage="User Exist!";
			HttpSession regSession=request.getSession();
			regSession.setAttribute("regError", errorMessage);
			response.sendRedirect("LandlordRegistration.jsp");
		}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}

}
