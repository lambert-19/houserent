package servlet;

public class Admin {
int id;
String username,email,password,phone;
public Admin() {
	super();
}
public Admin(int id, String username, String email, String password, String phone) {
	super();
	this.id = id;
	this.username = username;
	this.email = email;
	this.password = password;
	this.phone = phone;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}



}
