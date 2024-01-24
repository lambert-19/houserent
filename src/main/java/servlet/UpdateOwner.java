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
 * Servlet implementation class UpdateOwner
 */
@WebServlet("/UpdateOwner")
public class UpdateOwner extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateOwner() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out=response.getWriter()){
			//fetch DAta from registration page//
			int id=Integer.parseInt(request.getParameter("id")); 
			String fname=request.getParameter("f_name");
			String lname=request.getParameter("l_name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phone=request.getParameter("phone");
		    
			
				Crud crud= new Crud();
				crud.setId(id);
				crud.setFname(fname);
				crud.setLname(lname);
				crud.setEmail(email);
				crud.setPass(password);
				crud.setPhone(phone);
				
				CrudDao dao= new CrudDao(DbCon.getConnection());
				
				
				boolean f=dao.UpdateOwner(crud);
				
				if(f) {
					response.sendRedirect("ViewLandlords.jsp");
				}else {
					response.sendRedirect("UpdateOwner.jsp");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		
		}
	}


