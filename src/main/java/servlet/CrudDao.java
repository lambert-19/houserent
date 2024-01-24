package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import servlet.Crud;
import com.mysql.cj.xdevapi.Client;

public class CrudDao{
	private Connection con;
	private String query;
	private PreparedStatement ps;
	private ResultSet rs;
	
	
	public CrudDao(Connection con) {

		this.con = con;
	}
	//Insert New Client
	public Crud InsertTenant() {
		Crud client=null;
		try {
			query="insert into renterregister(first_name,last_name,email,password,phone)values(?,?,?,?,?)";
			ps=this.con.prepareStatement(query);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return client;
	}
	//display all tenants
	
	
	// select user
	public List<Crud>Alluser() {
		List<Crud> client=new ArrayList<>();
		try {
			query="select * from renterregister";
			ps=this.con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Crud c=new Crud();
		        c.setId(rs.getInt("id"));
		        c.setFname(rs.getString("first_name"));
				c.setLname(rs.getString("last_name"));
				c.setEmail(rs.getString("email"));
				c.setPass(rs.getString("password"));
				c.setPhone(rs.getString("phone"));
				client.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return client;
		
	}
	
	public List<Contract>Allcontract() {
		List<Contract> client=new ArrayList<>();
		try {
			query="select * from contract";
			ps=this.con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Contract c=new Contract();
				c.setId(rs.getInt("id"));
		        c.setHouse_number(rs.getString("house_number"));
				c.setHouse_address(rs.getString("address"));
				c.setLessor_name(rs.getString("lessor_name"));
				c.setLessor_number(rs.getString("lessor_phone"));
				c.setID_renter(rs.getString("Id_renter"));
				c.setRenter_name(rs.getString("renter_name"));
				c.setRenter_number(rs.getString("phone_number_renter"));
				c.setLease_term(rs.getString("lease_term"));
				c.setRent(rs.getString("rent"));
				c.setAgency_fee(rs.getString("agency_fee"));
				c.setAgent_name(rs.getString("agent_name"));
				c.setDate(rs.getString("contract_date"));
				c.setPhoto(rs.getString("contract_photo"));
				client.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return client;
		
	}
	
	public List<Crud>Allowner() {
		List<Crud> client=new ArrayList<>();
		try {
			query="select * from landlordregistration";
			ps=this.con.prepareStatement(query);
			rs=ps.executeQuery();
			while(rs.next()) {
				Crud c=new Crud();
		        c.setId(rs.getInt("idlandlordregistration"));
		        c.setFname(rs.getString("first_name"));
				c.setLname(rs.getString("last_name"));
				c.setEmail(rs.getString("email"));
				c.setPass(rs.getString("password"));
				c.setPhone(rs.getString("phone"));
				client.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return client;
		
	}
	public Crud Getidclient(int id) {
		Crud c=null;
		try {
			query="select * from renterregister where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()) {
				c=new Crud();
		        c.setId(rs.getInt("id"));
		        c.setFname(rs.getString("first_name"));
				c.setLname(rs.getString("last_name"));
				c.setEmail(rs.getString("email"));
				c.setPass(rs.getString("password"));
				c.setPhone(rs.getString("phone"));
				c.setId(id);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public Admin Getidadmin(int id) {
		Admin c=null;
		try {
			query="select * from admin where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()) {
				c=new Admin();
		        c.setId(rs.getInt("id"));
		        c.setUsername(rs.getString("username"));
				c.setEmail(rs.getString("email"));
				c.setPassword(rs.getString("password"));
				c.setPhone(rs.getString("phone"));
				c.setId(id);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	public Crud Getidowner(int id) {
		Crud c=null;
		try {
			query="select * from landlordregistration where idlandlordregistration=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()) {
				c=new Crud();
		        c.setId(rs.getInt("idlandlordregistration"));
		        c.setFname(rs.getString("first_name"));
				c.setLname(rs.getString("last_name"));
				c.setEmail(rs.getString("email"));
				c.setPass(rs.getString("password"));
				c.setPhone(rs.getString("phone"));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public Contract Getidcontract(int id) {
		Contract c=null;
		try {
			query="select * from contract where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()) {
				c=new Contract();
		        c.setId(rs.getInt("id"));
		        c.setHouse_number(rs.getString("house_number"));
				c.setHouse_address(rs.getString("address"));
				c.setLessor_name(rs.getString("lessor_name"));
				c.setLessor_number(rs.getString("lessor_phone"));
				c.setID_renter(rs.getString("Id_renter"));
				c.setRenter_name(rs.getString("renter_name"));
				c.setRenter_number(rs.getString("phone_number_renter"));
				c.setLease_term(rs.getString("lease_term"));
				c.setRent(rs.getString("rent"));
				c.setAgency_fee(rs.getString("agency_fee"));
				c.setAgent_name(rs.getString("agent_name"));
				c.setDate(rs.getString("contract_date"));
				c.setPhoto(rs.getString("contract_photo"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	//update Contract
	
	public boolean Updatecontract(Contract contract) {
	
		boolean f=false;
		try {
			query="update contract set house_number=?,address=?,lessor_name=?,lessor_phone=?,Id_renter=?,renter_name=?,phone_number_renter=?,lease_term=?,rent=?,agency_fee=?,agent_name=?,contract_date=? where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(13,contract.getId());
			ps.setString(1,contract.getHouse_number());
			ps.setString(2,contract.getHouse_address());
			ps.setString(3,contract.getLessor_name());
			ps.setString(4,contract.getLessor_number());
			ps.setString(5,contract.getID_renter());
			ps.setString(6,contract.getRenter_name());
			ps.setString(7,contract.getRenter_number());
			ps.setString(8,contract.getLease_term());
			ps.setString(9,contract.getRent());
			ps.setString(10,contract.getAgency_fee());
			ps.setString(11,contract.getAgent_name());
			ps.setString(12,contract.getDate());
			
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	public boolean UpdateClient(Crud crud) {
		boolean f=false;
		
		try {
			query="update renterregister set first_name=?,last_name=?,email=?,password=?,phone=? where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(6,crud.getId());
			ps.setString(1,crud.getFname());
			ps.setString(2,crud.getLname());
			ps.setString(3,crud.getEmail());
			ps.setString(4, crud.getPass());
			ps.setString(5,crud.getPhone());
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	//insert client
	
	public boolean clientregister(Crud clientModel) {
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
	//insert owner
	
	public boolean ownerregister(Crud clientModel1) {
		boolean set=false;

		try {
			query="insert into landlordregistration(first_name,last_name,email,password,phone)values(?,?,?,?,?)";
			ps=this.con.prepareStatement(query);
			ps.setString(1,clientModel1.getFname());
			ps.setString(2,clientModel1.getLname());
			ps.setString(3,clientModel1.getEmail());
			ps.setString(4,clientModel1.getPass());
			ps.setString(5,clientModel1.getPhone());
          
			ps.executeUpdate();
			set=true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return set;

	}
	
	//Delete a Client account
	public boolean DeleteClient(int id) {
		boolean f=false;
		
		try {
			query="delete from renterregister where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			
			int i= ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	//Delete a Landlord account
		public boolean DeleteOwner(int id) {
			boolean f=false;
			
			try {
				query="delete from landlordregistration where idlandlordregistration=?";
				ps=this.con.prepareStatement(query);
				ps.setInt(1, id);
				
				int i= ps.executeUpdate();
				
				if(i==1) {
					f=true;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return f;
		}
	//Update Client info
	
	public boolean  UpdateOwner(Crud crud) {
		boolean f=false;
		try {
			query="update landlordregistration set first_name=?,last_name=?,email=?,password=?,phone=? where idlandlordregistration=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(6,crud.getId());
			ps.setString(1,crud.getFname());
			ps.setString(2,crud.getLname());
			ps.setString(3,crud.getEmail());
			ps.setString(4, crud.getPass());
			ps.setString(5,crud.getPhone());
		
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	
	public boolean UpdateAdmin(Admin crud) {
		boolean f=false;
		
		try {
			query="update admin set username=?,email=?,password=?,phone=? where id=?";
			ps=this.con.prepareStatement(query);
			
			ps.setString(1,crud.getUsername());
			ps.setString(2,crud.getEmail());
			ps.setString(3,crud.getPassword());
			ps.setString(4,crud.getPhone());
			ps.setInt(5,crud.getId());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}
	
	public boolean DeleteContract(int id) {
		boolean f=false;
		try {
			query="Delete from contract where id=?";
			ps=this.con.prepareStatement(query);
			ps.setInt(1, id);
			
       int i= ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	
	
	public List<Contract>Allcontractbyname(String name) {
		List<Contract> client=new ArrayList<>();
		try {
			query="select * from contract where lessor_name=?";
			ps=this.con.prepareStatement(query);
			ps.setString(1,name);
			rs=ps.executeQuery();
			while(rs.next()) {
				Contract c=new Contract();
				c.setId(rs.getInt("id"));
		        c.setHouse_number(rs.getString("house_number"));
				c.setHouse_address(rs.getString("address"));
				c.setLessor_name(rs.getString("lessor_name"));
				c.setLessor_number(rs.getString("lessor_phone"));
				c.setID_renter(rs.getString("Id_renter"));
				c.setRenter_name(rs.getString("renter_name"));
				c.setRenter_number(rs.getString("phone_number_renter"));
				c.setLease_term(rs.getString("lease_term"));
				c.setRent(rs.getString("rent"));
				c.setAgency_fee(rs.getString("agency_fee"));
				c.setAgent_name(rs.getString("agent_name"));
				c.setDate(rs.getString("contract_date"));
				c.setPhoto(rs.getString("contract_photo"));
				client.add(c);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return client;
		
	}
	
	
}
