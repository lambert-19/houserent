package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbconnection.DbCon;

/**
 * Servlet implementation class Delete3
 */
@WebServlet("/Delete3")
public class Delete3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		try {
			HousecardDao dao=new HousecardDao(DbCon.getConnection());
			boolean f=dao.DeleteHouse(id);
			
			if(f) {
				response.sendRedirect("ViewProperties.jsp");
			}else {
				response.sendRedirect("ViewProperties.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
