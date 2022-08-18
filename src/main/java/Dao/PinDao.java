package Dao;

import Model.PinModel;
import java.sql.*;
import Connection.DBConnection;

public class PinDao {
	public static void insertPin(PinModel p) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="insert into pin(pid,pin) values(?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, p.getPid());
			pst.setInt(2, p.getPin());
			pst.executeUpdate();
			System.out.println("pin inserted");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	public static boolean checkPinInserted(PinModel p) {
		boolean flag=false;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from pin where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, p.getPid());
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
	public static int checkPinInsert(int id) {
			int p=0;
		try {
			Connection conn = DBConnection.createConnection();
			String sql="select * from pin where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				p=rs.getInt("pin");
			}
		}
			catch(Exception e) {
				e.printStackTrace();
			}
		return p;
	}
	public static void updatePin(PinModel p) {
		try {
			Connection conn = DBConnection.createConnection();
			String sql="update pin set pin=? where pid=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, p.getPin());
			pst.setInt(2, p.getPid());
			pst.executeUpdate();
			System.out.println("Pin Updated Successfully");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}

