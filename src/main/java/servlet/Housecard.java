package servlet;

import java.util.List;

public class Housecard {
	private int id,count;
	private String floor;
	private String House_type;
	private String address;
	private String owner;
	private String rent;
	private String description;
	private String district;
	private String hall;
	private String title;
	private String area;
	private String categorie;
    private String status;
    private String o_phone;
	private String deposite;
    private String o_id;
    private String agent_name;
    private String agent_phone;
  private String facilities;
  private String image;
 private String path;
	public Housecard() {
		super();
	}
	
	
	


	public Housecard(int id, String floor, String house_type, String address, String owner, String rent,
			String description, String district, String hall, String title, String area, String categorie,
			String status, String o_phone, String deposite, String o_id, String agent_name,String facilities,String image,
			String agent_phone,String path,int count) {
		super();
		this.id = id;
		this.floor = floor;
		House_type = house_type;
		this.address = address;
		this.owner = owner;
		this.rent = rent;
		this.description = description;
		this.district = district;
		this.hall = hall;
		this.title = title;
		this.area = area;
		this.categorie = categorie;
		this.status = status;
		this.o_phone = o_phone;
		this.deposite = deposite;
		this.o_id = o_id;
		this.agent_name = agent_name;
		this.agent_phone = agent_phone;
		this.facilities=facilities;
		this.image=image;
		this.path=path;
		this.count=count;
	}





	public int getCount() {
		return count;
	}





	public void setCount(int count) {
		this.count = count;
	}





	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	public String getDeposite() {
		return deposite;
	}


	public void setDeposite(String deposite) {
		this.deposite = deposite;
	}

	public String getFloor() {
		return floor;
	}


	public void setFloor(String floor) {
		this.floor = floor;
	}


	public String getHouse_type() {
		return House_type;
	}


	public void setHouse_type(String house_type) {
		House_type = house_type;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getOwner() {
		return owner;
	}


	public void setOwner(String owner) {
		this.owner = owner;
	}


	public String getRent() {
		return rent;
	}


	public void setRent(String rent) {
		this.rent = rent;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getDistrict() {
		return district;
	}


	public void setDistrict(String district) {
		this.district = district;
	}


	public String getHall() {
		return hall;
	}


	public void setHall(String hall) {
		this.hall = hall;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getCategorie() {
		return categorie;
	}


	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getO_phone() {
		return o_phone;
	}


	public void setO_phone(String o_phone) {
		this.o_phone = o_phone;
	}





	public String getO_id() {
		return o_id;
	}





	public void setO_id(String o_id) {
		this.o_id = o_id;
	}





	public String getAgent_name() {
		return agent_name;
	}





	public void setAgent_name(String agent_name) {
		this.agent_name = agent_name;
	}





	public String getAgent_phone() {
		return agent_phone;
	}





	public void setAgent_phone(String agent_phone) {
		this.agent_phone = agent_phone;
	}





	public String getFacilities() {
		return facilities;
	}





	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}





	public String getImage() {
		return image;
	}





	public void setImage(String image) {
		this.image = image;
	}





	public String getPath() {
		return path;
	}





	public void setPath(String path) {
		this.path = path;
	}


	


	


}
