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
 * Servlet implementation class addhouse
 */
@WebServlet("/addhouse")
@MultipartConfig
public class addhouse extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addhouse() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out=response.getWriter()){
		
		
			String title=request.getParameter("title");
			String floor=request.getParameter("floor_number");
			String type=request.getParameter("house_type");
			String address=request.getParameter("address");
			String owner=request.getParameter("o_name");
			String phone=request.getParameter("o_phone");
			String rent=request.getParameter("rent");
			String deposit=request.getParameter("deposit");
			String description=request.getParameter("description");
			String district=request.getParameter("district");
			String hall=request.getParameter("hall");
			String area=request.getParameter("area");
			String category=request.getParameter("category");
			String status=request.getParameter("status");
			String owner_id=request.getParameter("o_id");
			String agent_name=request.getParameter("a_name");
			Part part=request.getPart("file");
			String photo=extractFileName(part);
			String agent_phone=request.getParameter("a_phone");
			String check[] =request.getParameterValues("checkbox");
		    String checkbox="";
			for(int i=0;i<check.length;i++) {
			checkbox+=check[i]+"/";
		    }
			String savepath="C:\\Users\\Administrator\\Desktop\\House rental system\\src\\main\\webapp\\photo"+File.separator+photo;
			File fileupload=new File(savepath);
			part.write(savepath+File.separator);
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
				PreparedStatement ps=con.prepareStatement("insert into house(title,floor,house_type,address,owner_name,owner_phone,owner_id,agent_name,agent_phone,rent,deposit,description,district,hall,area,categorie,status,image_name,images,facilities)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,title);
				ps.setString(2,floor);
				ps.setString(3, type);
				ps.setString(4, address);
				ps.setString(5,owner);
				ps.setString(6,phone);
				ps.setString(7,owner_id);
				ps.setNString(8,agent_name);
				ps.setString(9, agent_phone);
				ps.setString(10,rent);
				ps.setString(11, deposit);
				ps.setString(12,description);
				ps.setString(13,district);
				ps.setString(14,hall);
				ps.setString(15,area);
				ps.setString(16,category);
				ps.setString(17,status);
				ps.setString(18,photo);
				ps.setString(19,savepath);
				ps.setString(20, checkbox);
				
				int f=ps.executeUpdate();
               
				
				
				if(f>0) {
					
					response.sendRedirect("Owner.jsp");
					
				}else {
					response.sendRedirect("addhouse.jsp");
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
