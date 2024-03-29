package Dao;
import Model.Amount;
import Model.Customer;
import Model.Transactions;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Connection.DBConnection;


public class AmountDao {
	
	public static void InsertAmount(Amount a) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="insert into balance(cid,balance,accountname,message) values(?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, a.getCid());
			pst.setString(2, a.getBalance());
			pst.setString(3, a.getAccountname());
			pst.setString(4, a.getMessage());
			pst.executeUpdate();
			System.out.println("amount Inserted");
		}
		catch(Exception e) {
			
		}
	}
	
	public static boolean checkBalance(Amount a) {
		boolean flag=false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from balance where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, a.getCid());
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
	public static int checkBalanceForSend(int id) {
		int balance=0;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from balance where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				balance=rs.getInt("balance");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
		return balance;	
	}

	

	
	public static void updateAmount(Amount a) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update balance set balance=balance+?,accountname=?,message=? where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, a.getBalance());
			pst.setString(2, a.getAccountname());
			pst.setString(3, a.getMessage());
			pst.setInt(4, a.getCid());
			pst.executeUpdate();
			System.out.println("amount deposited");
		}
		catch(Exception e) {
			
		}
	}
	public static List<Amount> viewBalance(int id) {
		List<Amount> list=new ArrayList();
		try {
			Connection conn = DBConnection.createConnection();
			String sql = "select * from balance where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				 Amount a= new Amount();
				a.setBalance(rs.getString("balance"));
				a.setAccountname(rs.getString("accountname"));
				list.add(a);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	public static void sendMoney(Amount a) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update balance set balance=balance+?,accountname=?,message=? where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, a.getBalance());
			pst.setString(2, a.getAccountname());
			pst.setString(3, a.getMessage());
			pst.setInt(4, a.getCid());
			pst.executeUpdate();
			System.out.println("Money Sent");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	public static void updateMoney(int id, String amount) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update balance set balance=balance-? where cid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, amount);
			pst.setInt(2, id);
			
			pst.executeUpdate();
			System.out.println("Money Updated");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	public static List<Amount> getAllBalances(){
		List<Amount> list1=new ArrayList();
		try {
			Connection conn=DBConnection.createConnection();
			String sql="select * from balance ";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				Amount a=new Amount();
				a.setCid(rs.getInt("cid"));
				a.setAccountname(rs.getString("accountname"));
				a.setBalance(rs.getString("balance"));
				list1.add(a);
			}
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list1;
		
		
		
	}
	public static int getAllFund(){
		int balance=0;
		try {
			Connection conn=DBConnection.createConnection();
			String sql="select * from balance ";
			PreparedStatement pst=conn.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				 balance=balance+Integer.parseInt(rs.getString("balance"));
				
			}
			
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return balance;
		
		
		
	}
	public static boolean isPinRegistered(int id) {
		boolean flag=false;
		try {
			Connection conn=DBConnection.createConnection();
			String sql="select * from pin where pid=? ";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
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
	public static void viewTransactions(int id,String amount,String message) {
		try {
			
				Connection conn = DBConnection.createConnection();
				String sql="insert into transactions(pid,amount,message) values(?,?,?)";
				PreparedStatement pst = conn.prepareStatement(sql);
				pst.setInt(1, id);
				pst.setString(2, amount);
				pst.setString(3, message);
				pst.executeUpdate();
				System.out.println("Transaction Inserted");
		}
			catch(Exception e) {
				e.printStackTrace();
			}
	}
	public static List<Transactions> getAllTransactions(int id){
		List<Transactions> list=new ArrayList();
		try {
		Connection conn=DBConnection.createConnection();
		String sql="select * from transactions where pid=? ";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		while(rs.next()) {
			Transactions t=new Transactions();
			t.setId(rs.getInt("pid"));
			t.setAmount(rs.getString("amount"));
			t.setMessage(rs.getString("message"));
			list.add(t);
			
		}
		
				
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return list;
	
	}
}




