package servlet;

public class Details{
private int idhouse;
private String floor;
private String House_type;
private String address;
private String owner;
private String rent;
private String description;
private String district;
private String hall;
private String image;
private String area;
private String categorie;
public Details() {
	super();
}

public Details(int idhouse, String floor, String house_type, String address, String owner, String rent,
		String description, String district, String hall, String image, String area,String categorie) {
	super();
	this.idhouse = idhouse;
	this.floor = floor;
	House_type = house_type;
	this.address = address;
	this.owner = owner;
	this.rent = rent;
	this.description = description;
	this.district = district;
	this.hall = hall;
	this.image = image;
	this.area = area;
}

public int getIdhouse() {
	return idhouse;
}

public void setIdhouse(int idhouse) {
	this.idhouse = idhouse;
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

public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
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


}
