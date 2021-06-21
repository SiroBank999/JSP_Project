package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Object.Category;


public class CategoryModel {
	Connection conn =null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public int getTotalCategory() {
		String query = "select count(*) from category";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			
		}
		
		
		return 0;
	}
	public List<Category> pagingCategory(int index){
		List<Category> list = new ArrayList<>();
		String query = "SELECT * FROM category \r\n"
				+ "ORDER BY id DESC \r\n"
				+ "LIMIT ? , 3";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setInt(1, (index-1) * 3);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Category(rs.getInt(1),rs.getString(2),rs.getString(3)));
			}
		} catch (Exception e) {
			
		}
		return list;
	}
	public List<Category> getCategory(){
		List<Category> list = new ArrayList<>();
		String query = "select * from category limit 3 ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Category(rs.getInt(1),rs.getString(2),rs.getString(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public List<Category> getListCategory(){
		List<Category> list = new ArrayList<>();
		String query = "select * from category  ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new Category(rs.getInt(1),rs.getString(2),rs.getString(3)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	public void addCategory(String categoryname ,String image) {
			
			String query = "insert into category(categoryname,images) values(?,?)";
			try {
				conn = Database.ketNoi();
				ps = conn.prepareStatement(query);
				ps.setString(1, categoryname);
				ps.setString(2, image);
				ps.execute();
				
			} catch (Exception e) {
			}
			
		}
	public static void main(String[] args) {
		CategoryModel cm = new CategoryModel();
		List<Category> listCate = cm.getCategory();
		String category ="Chó";
		String categoryname =null;
		int id_category = 0;
		int id=0;
		for(Category cate : listCate) {
			categoryname = cate.getCategoryname();
			id =cate.getId();
			if(categoryname.equals(category)) {
				categoryname = ""+id;
				id_category = Integer.valueOf(categoryname);
			}
			System.out.print(id+"\n");
		}
		System.out.print(id_category+"\n");
		
	}
	
	}
