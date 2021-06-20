package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Object.Admin;


public class AdminModel {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public Admin CheckAcc(String username, String password) {

		String query = "select * from admin  where username=? and pass=?";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Admin(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));

			}
		} catch (Exception e) {

		}
		return null;

	}
	public static void main(String[] args) {
		AdminModel m = new AdminModel();
		String n = m.CheckAcc("admin", "123456").toString();
		System.out.print(n);

	}

}
