package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.DbCon;

/**
 * Servlet implementation class UpdateClient2
 */
@WebServlet("/UpdateClient2")
public class UpdateClient2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateClient2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out=response.getWriter()){
			
		int id=Integer.parseInt(request.getParameter("id")); 
		String fname=request.getParameter("f_name");
		String lname=request.getParameter("l_name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String phone=request.getParameter("phone");
		
		Client c=new Client();
		c.setId(id);
		c.setFname(fname);
		c.setLname(lname);
		c.setEmail(email);
		c.setPass(password);
		c.setPhone(phone);
		
		HousecardDao dao=new HousecardDao(DbCon.getConnection());
		boolean f=dao.Client_Update(c);
		
		if(f) {
			response.sendRedirect("ClientPage.jsp");
		}else {
			response.sendRedirect("clientUpdatePage.jsp");
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
