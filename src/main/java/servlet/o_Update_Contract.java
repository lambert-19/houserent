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
 * Servlet implementation class o_Update_Contract
 */
@WebServlet("/o_Update_Contract")
@MultipartConfig
public class o_Update_Contract extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public o_Update_Contract() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
					response.sendRedirect("o_view_contract.jsp");
				}else {
					response.sendRedirect("o_Update_Contract.jsp");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}
	}




}
