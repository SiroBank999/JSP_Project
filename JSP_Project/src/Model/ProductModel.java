package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Object.Product;

public class ProductModel {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public List<Product> pagingProduct(int index){
		List<Product> listProduct = new ArrayList<Product>();
		String query ="SELECT * FROM csdl_banhang.product\r\n"
				+ "order by id desc\r\n"
				+ "LIMIT ?,10";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setInt(1, (index-1) * 3);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProduct.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
		} catch (Exception e) {
		}
		return listProduct;

	}
	public int getTotalProduct() {
		String query ="SELECT COUNT(*) FROM product";
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
	public void insertProduct(String productname, double price, double sale, String image, String describe,
			String status, String view, int id_cate) {

		String query = "INSERT INTO product (productname,price,sale,image,des,statusp,viewer,id_category)  values(?,?,?,?,?,?,?,?)";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setString(1, productname);
			ps.setDouble(2, price);
			ps.setDouble(3, sale);
			ps.setString(4, image);
			ps.setString(5, describe);
			ps.setString(6, status);
			ps.setString(7, view);
			ps.setInt(8, id_cate);
			ps.execute();

		} catch (Exception e) {

		}

	}

	public List<Product> getProduct() {
		List<Product> listProduct = new ArrayList<>();
		String query = "select*from product ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProduct.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
		} catch (Exception e) {
		}
		return listProduct;
	}
	public List<Product> getProductNew() {
		List<Product> listProduct = new ArrayList<>();
		String query = "select*from product where statusp='NEW' ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProduct.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
		} catch (Exception e) {
		}
		return listProduct;
	}
	public List<Product> getProducthot() {
		List<Product> listProduct = new ArrayList<>();
		String query = "select*from product where statusp='HOT' ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProduct.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
		} catch (Exception e) {
		}
		return listProduct;
	}
	public List<Product> getProductbyIdcategory(int id ) {
		List<Product> listProduct = new ArrayList<>();
		String query = "select*from product where id_category=?";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				listProduct.add(new Product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getDouble(4),
						rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getInt(9)));
			}
		} catch (Exception e) {
		}
		return listProduct;
	}
	public void updateProduct(String productname, double price, double sale, String image, String describe,
			String status, int id_cate,int id) {

		String query = "UPDATE product SET productname=?,price=?,sale=?,image=?,des=?,statusp=?,id_category=? WHERE id =? ";
		try {
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setString(1, productname);
			ps.setDouble(2, price);
			ps.setDouble(3, sale);
			ps.setString(4, image);
			ps.setString(5, describe);
			ps.setString(6, status);
			ps.setInt(7, id_cate);
			ps.setInt(8, id);
			ps.execute();

		} catch (Exception e) {

		}

	}

	public void deleteProductbyId(int id) {
		String query = "DELETE FROM product where id= ? ";
		try {
			
		
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.execute();
			
		}
		catch (Exception e) {
		}
		
		
	
	
	}
	
	public Product getProductbyId(int id) {
		Product pd = new Product();
		String query = "select*from product where id= ? ";
		try {
			
		
			conn = Database.ketNoi();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				pd.setId(rs.getInt(1));
				pd.setProductname(rs.getString(2));
				pd.setPrice(rs.getDouble(3));
				pd.setSale( rs.getDouble(4));
				pd.setImage(rs.getString(5));
				pd.setDescribe(rs.getString(6));
				pd.setStatus(rs.getString(7));
				pd.setView(rs.getString(8));
				pd.setId_cate(rs.getInt(9));
				}
			
		}
		catch (Exception e) {
		}
		
		
		return pd;
	
	}
	public static void main(String[] args) {
		ProductModel pm = new ProductModel();
		pm.getProductbyIdcategory(1);

	}
}
