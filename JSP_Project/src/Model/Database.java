package Model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {

	private final static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final static String DATABASE_LINK = "jdbc:mysql://localhost:3307/csdl_banhang";
	public static Connection ketNoi() {
		Connection conn = null;

		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(DATABASE_LINK, "root", "292000");
		} catch (ClassNotFoundException ex) {
			System.err.println("Không tìm thấy Driver: " + ex.getMessage());
		} catch (SQLException ex) {
			System.err.println("Không thể kết nối MySQL: " + ex.getMessage());
		}
		return conn;
	}
	
}
