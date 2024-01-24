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

/**
 * Servlet implementation class o_add_contract
 */
@WebServlet("/o_add_contract")
@MultipartConfig
public class o_add_contract extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public o_add_contract() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
		
		String house_number=request.getParameter("floor_number");
		String house_address=request.getParameter("address");
		String lessor_name=request.getParameter("l_name");
		String lessor_number=request.getParameter("l_phone");
		String rent=request.getParameter("rent");
		String renter=request.getParameter("name_renter");
		String ID_renter=request.getParameter("Id_renter");
		String renter_number=request.getParameter("r_phone");
		String lease_term=request.getParameter("lease_term");
		String agency_fee=request.getParameter("agency_fee");
		String agent_name=request.getParameter("agent_name");
		String date=request.getParameter("date");
		Part part=request.getPart("photo");
		String photo=extractFileName(part);
		String savepath="C:\\Users\\Administrator\\Desktop\\House rental system\\src\\main\\webapp\\photo" + File.separator + photo;
		File fileupload=new File(savepath);
		part.write(savepath+File.separator);
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
			PreparedStatement ps=con.prepareStatement("insert into contract (house_number,address,lessor_name,lessor_phone,Id_renter,renter_name,phone_number_renter,lease_term,rent,agency_fee,agent_name,contract_date,photo_name,contract_photo)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1,house_number);
			ps.setString(2, house_address);
			ps.setString(3,lessor_name );
			ps.setString(4,lessor_number);
			ps.setString(5,ID_renter);
			ps.setString(6, renter);
			ps.setString(7,renter_number);
			ps.setString(8,lease_term);
			ps.setString(9,rent);
			ps.setString(10,agency_fee);
			ps.setString(11,agent_name);
			ps.setString(12,date);
			ps.setString(13,photo);
			ps.setString(14, savepath);
			int f=ps.executeUpdate();
		if(f>0) {
			response.sendRedirect("o_view_contract.jsp");
		}else {
			response.sendRedirect("o_insert_contract.jsp");
		}
			
		}catch(Exception e) {
			e.printStackTrace();
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
