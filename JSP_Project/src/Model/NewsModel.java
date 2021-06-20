package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Object.News;


public class NewsModel {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<News> getNews() {
		List<News> listNews = new ArrayList<>();
		String query = "select*from news ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listNews.add(new News(rs.getInt(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getInt(7)));
			}
		} catch (Exception e) {
		}
		return listNews;
	}
}
