package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ContactModel {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public void insertContact(String name,String phone, String email,String content) {
		String query = "INSERT INTO contact(name,phone,email,content) values(?,?,?,?)";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, email);
			ps.setString(4, content);
			
			ps.executeUpdate();
		} catch (Exception e) {
			
			
		}
		
}
}

