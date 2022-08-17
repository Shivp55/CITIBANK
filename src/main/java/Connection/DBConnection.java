package Connection;
import java.sql.*;


public class DBConnection {
	public static Connection createConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/banking","root","");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	


}
