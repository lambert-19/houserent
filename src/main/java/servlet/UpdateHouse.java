package servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dbconnection.DbCon;

/**
 * Servlet implementation class UpdateHouse
 */
@WebServlet("/UpdateHouse")
@MultipartConfig
public class UpdateHouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateHouse() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try (PrintWriter out=response.getWriter()){
	         int id=Integer.parseInt(request.getParameter("id"));
			String title=request.getParameter("title");
			String  floor=request.getParameter("floor_number");
			String house_type=request.getParameter("house_type");
			String address=request.getParameter("address");
			String o_name=request.getParameter("o_name");
			String o_phone=request.getParameter("o_phone");
			String o_id=request.getParameter("o_id");
			String a_name=request.getParameter("a_name");
			String a_phone=request.getParameter("a_phone");
			String rent=request.getParameter("rent");
			String deposit=request.getParameter("deposit");
			String description=request.getParameter("description");
			String district=request.getParameter("district");
			String hall=request.getParameter("hall");
			String area=request.getParameter("area");
			String category=request.getParameter("category");
			String status=request.getParameter("status");
			
			
			
			
				Housecard h= new Housecard();
				h.setId(id);
				h.setTitle(title);
				h.setFloor(floor);
				h.setHouse_type(house_type);
				h.setAddress(address);
				h.setOwner(o_name);
				h.setO_phone(o_phone);
				h.setO_id(o_id);
				h.setAgent_name(a_name);
				h.setAgent_phone(a_phone);
				h.setRent(rent);
				h.setDeposite(deposit);
				h.setDescription(description);
				h.setDistrict(district);
				h.setHall(hall);
				h.setArea(area);
				h.setCategorie(category);
				h.setStatus(status);
				
				
				HousecardDao dao = new HousecardDao(DbCon.getConnection());
				boolean f=dao.UpdateHouse(h);
				
				if(f) {
					response.sendRedirect("ViewProperties.jsp");
				}else {
					response.sendRedirect("UpdateHouse.jsp");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	
	
	}

