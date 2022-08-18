package Model;

public class debit {
	int id;
	String fname,mname,lname,selectaccnt,contact,address,email,password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getSelectaccnt() {
		return selectaccnt;
	}
	public void setSelectaccnt(String selectaccnt) {
		this.selectaccnt = selectaccnt;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	@Override
	public String toString() {
		return "debit [id=" + id + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", selectaccnt="
				+ selectaccnt + ", contact=" + contact + ", address=" + address + ", email=" + email + ", password="
				+ password + "]";
	}


}
