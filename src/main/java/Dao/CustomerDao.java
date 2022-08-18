package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;
import Model.Customer;
import Model.Amount;
public class CustomerDao {
	
	public static boolean checkEmailAndAccount(String email,String account) {
		boolean flag=false;
		try {
			Connection conn=DBConnection.createConnection();
			String sql="select * from customer where email=? and account=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,email);
			pst.setString(2,account);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return flag;
		
		
	}
	
	
	public static void insertCustomer(Customer c) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="insert into customer(fname,mname,lname,account,contact,address,email,password) values(?,?,?,?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,c.getFname() );
			pst.setString(2,c.getMname());
			pst.setString(3,c.getLname());
			pst.setString(4,c.getSelectaccnt());
			pst.setString(5,c.getContact());
			pst.setString(6,c.getAddress());
			pst.setString(7,c.getEmail());
			pst.setString(8,c.getPassword());
			pst.executeUpdate();

			System.out.println("data inserted");
			
		} 
			catch (Exception e) {
			e.printStackTrace();
			}
		}
	public static Customer customerLogin(Customer c) {
		Customer c1=null;	
		try {
			Connection conn=DBConnection.createConnection();
			String sql="select * from customer where email=? and password=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,c.getEmail());
			pst.setString(2, c.getPassword());
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				c1=new Customer();
				c1.setId(rs.getInt("id"));
				c1.setFname(rs.getString("fname"));
				c1.setMname(rs.getString("mname"));
				c1.setLname(rs.getString("lname"));
				c1.setSelectaccnt(rs.getString("account"));
				c1.setContact(rs.getString("contact"));
				c1.setAddress(rs.getString("address"));
				c1.setEmail(rs.getString("email"));
				c1.setPassword(rs.getString("password"));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return c1;
	}
	public static void updateCustomer(Customer c) {
		try {
			Connection conn=DBConnection.createConnection();
			String sql="update customer set fname=?,mname=?,account=?,lname=?,contact=?,address=?,email=? where id=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, c.getFname());
			pst.setString(2, c.getMname());
			pst.setString(3, c.getLname());
			pst.setString(4, c.getSelectaccnt());
			pst.setString(5, c.getContact());
			pst.setString(6, c.getAddress());
			pst.setString(7, c.getEmail());
			pst.setInt(8, c.getId());
			pst.executeUpdate();
			System.out.println("data inserted");
			
		}
		catch(Exception e) {
			e.printStackTrace();		}
		
	}

	
	
	public static boolean checkOldPassword(int id,String op) {
		boolean flag = false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from customer where id=? and password=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.setString(2, op);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static void updatePassword(String np,int id) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update customer set password=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setInt(2, id);
			pst.executeUpdate();
			System.out.println("password updated");
		} catch (Exception e) {
			e.printStackTrace();
	
		}
	}
	public static boolean enterPin(int pin) {
		boolean flag=false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from pin  where pin=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1,pin );
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				flag=true;
			}
			
		}
		catch(Exception e) {
			
		}
		return flag;
		
		
	}
	public static boolean checkEmail(String email) {
		boolean flag  =false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from customer where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, email);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
	}
	public static void newPassword(String np,String email) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update customer set password=? where email=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, np);
			pst.setString(2, email);
//			System.out.println(np+email);
			pst.executeUpdate();
			System.out.println("password changed");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static List<Customer> getAllCustomers(){
		List<Customer> list=new ArrayList();
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from customer";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				Customer c=new Customer();
				c.setId(rs.getInt("id"));
				c.setFname(rs.getString("fname"));
				c.setMname(rs.getString("mname"));
				c.setLname(rs.getString("lname"));
				c.setSelectaccnt(rs.getString("account"));
				c.setContact(rs.getString("contact"));
				c.setAddress(rs.getString("address"));
				c.setEmail(rs.getString("email"));
				c.setPassword(rs.getString("password"));
				list.add(c);
			}	
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		return list;	
	}
	public static List getAllcust(){
		List list=new ArrayList();
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from customer";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				Customer c=new Customer();
				c.setId(rs.getInt("id"));
				
				list.add(c);
			}	
		}
		catch(Exception e) {
			e.printStackTrace();		
			}
		return list;	
	}

}
