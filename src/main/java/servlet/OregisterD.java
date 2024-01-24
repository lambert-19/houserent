package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OregisterD {
	private Connection con;
	private String query;
	private PreparedStatement ps;
	private int rs;

	public OregisterD(Connection con) {

		this.con = con;
	}
	public boolean ownerregister(Client2 ownerModel) {
		boolean set=false;

		try {
			query="insert into landlordregistration (first_name,last_name,email,password,phone)values(?,?,?,?,?)";
			ps=this.con.prepareStatement(query);
			ps.setString(1,ownerModel.getFname());
			ps.setString(2,ownerModel.getLname());
			ps.setString(3,ownerModel.getEmail());
			ps.setString(4,ownerModel.getPass());
			ps.setString(5,ownerModel.getPhone());

			ps.executeUpdate();
			set=true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return set;

	}
}
