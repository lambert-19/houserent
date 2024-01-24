package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {
	private Connection con;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;


	public AdminDao(Connection con) {
		super();
		this.con = con;
}
	public Admin adminlogin(String email,String password) {
		Admin admin=null;
		try {
			query="select * from admin where  email=? and password=? ";
			ps=this.con.prepareStatement(query);
			
			ps.setString(1, email);
			ps.setString(2, password);
		
			rs=ps.executeQuery();
			
			if(rs.next()) {
				admin=new Admin();
				
				admin.setUsername(rs.getString("username"));
				admin.setEmail(rs.getString("email"));
			admin.setPassword(rs.getString("password"));
			admin.setPhone(rs.getString("phone"));
			admin.setId(rs.getInt("id"));
			}
			
			}catch(Exception e) {
				e.printStackTrace();
		}
		return admin;
		
	}

}