package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Object.Banner;

public class BannerModel {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<Banner> getBanner(){
		List<Banner> list = new ArrayList<>();
		String query ="SELECT  * FROM banner";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Banner(rs.getInt(1),rs.getString(2),rs.getString(3)));
			}
			
		} catch (Exception e) {
			
		}
		return list;
	}

}
