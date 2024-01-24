package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClientRegisterDao {
	private Connection con;
	private String query;
	private PreparedStatement ps;
	private int rs;

	public ClientRegisterDao(Connection con) {

		this.con = con;
	}
	public boolean clientregister(Client2 clientModel) {
		boolean set=false;

		try {
			query="insert into renterregister(first_name,last_name,email,password,phone)values(?,?,?,?,?)";
			ps=this.con.prepareStatement(query);
			ps.setString(1,clientModel.getFname());
			ps.setString(2,clientModel.getLname());
			ps.setString(3,clientModel.getEmail());
			ps.setString(4,clientModel.getPass());
			ps.setString(5,clientModel.getPhone());
          
			ps.executeUpdate();
			set=true;
          
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return set;

	}
}
