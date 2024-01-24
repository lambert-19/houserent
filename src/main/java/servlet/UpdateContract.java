package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dbconnection.DbCon;

/**
 * Servlet implementation class UpdateContract
 */
@WebServlet("/UpdateContract")
@MultipartConfig
public class UpdateContract extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateContract() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try (PrintWriter out=response.getWriter()){
			
			int id=Integer.parseInt(request.getParameter("id"));
			
			String house_number=request.getParameter("floor_number");
			String house_address=request.getParameter("address");
			String lessor_name=request.getParameter("l_name");
			String lessor_number=request.getParameter("l_phone");
			String renter=request.getParameter("name_renter");
			String ID_renter=request.getParameter("Id_renter");
			String renter_number=request.getParameter("r_phone");
			String lease_term=request.getParameter("lease_term");
			String rent=request.getParameter("rent");
			String agency_fee=request.getParameter("agency_fee");
			String agent_name=request.getParameter("agent_name");
			String date=request.getParameter("date");
		
			
			try {
				Contract c=new Contract();
				c.setId(id);
				c.setHouse_number(house_number);
				c.setHouse_address(house_address);
				c.setLessor_name(lessor_name);
				c.setLessor_number(lessor_number);
				c.setID_renter(ID_renter);
				c.setRenter_name(renter);
				c.setRenter_number(renter_number);
				c.setLease_term(lease_term);
				c.setRent(rent);
				c.setAgency_fee(agency_fee);
				c.setAgent_name(agent_name);
				c.setDate(date);
				CrudDao dao=new CrudDao(DbCon.getConnection());
				
				boolean f=dao.Updatecontract(c);
				
				if(f) {
					response.sendRedirect("ViewContract.jsp");
				}else {
					response.sendRedirect("UpdateContract.jsp");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}

	private String extractFileName(Part part) {
		// TODO Auto-generated method stub
		String contentDisp=part.getHeader("content-disposition");
		String[] items =contentDisp.split(";");
		for(String s :items) {
			if(s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=")+2,s.length()-1);
			}
		}
		return "";
	}
}
