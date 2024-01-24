package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class OwnerLoginDao {
	private Connection con;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;


	public OwnerLoginDao(Connection con) {
		super();
		this.con = con;
	}

	public Owner ownerlogin(String email,String password) {
		Owner owner=null;
		try {
			query="select * from landlordregistration where email=? and password=?";
			ps=this.con.prepareStatement(query);
			ps.setString(1,email);
			ps.setString(2,password);
			rs=ps.executeQuery();

			if(rs.next()) {
				 owner=new Owner();
				
				owner.setFname(rs.getString("first_name"));
				owner.setLname(rs.getString("last_name"));
				owner.setEmail(rs.getString("email"));
				owner.setPass(rs.getString("password"));
				owner.setPhone(rs.getString("phone"));
				owner.setId(rs.getInt("idlandlordregistration"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return owner;
	}
}
