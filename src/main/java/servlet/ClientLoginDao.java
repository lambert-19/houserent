package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClientLoginDao {
private Connection con;
private String query;
private PreparedStatement ps;
private ResultSet rs;

public ClientLoginDao(Connection con) {

	this.con = con;
}
public Client clientlogin(String email,String password) {
	Client client=null;
	try {
		query="select * from renterregister where email=? and password=?";
		ps=this.con.prepareStatement(query);
		
		ps.setString(1,email);
		ps.setString(2, password);
		
		rs=ps.executeQuery();


		if(rs.next()) {
			 client=new Client();
			client.setFname(rs.getString("first_name"));
			client.setLname(rs.getString("last_name"));
			client.setEmail(rs.getString("email"));
			client.setPass(rs.getString("password"));
			client.setPhone(rs.getString("phone"));
			client.setId(rs.getInt("id"));
			
			
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return client;

}


}
