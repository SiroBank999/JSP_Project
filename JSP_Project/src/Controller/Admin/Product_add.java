package Controller.Admin;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.CategoryModel;
import Model.ProductModel;
import Object.Category;

@MultipartConfig
@WebServlet("/product_add")
public class Product_add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product_add() {
    }
    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		insertProduct(request, response);
	}
	protected void insertProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			String productname =request.getParameter("productname");
			double price = Double.parseDouble(request.getParameter("price"));
			double sale = Double.parseDouble(request.getParameter("sale"));
			String status = request.getParameter("status");
			String describe = request.getParameter("describe");
			String category = request.getParameter("category");
			CategoryModel cm = new CategoryModel();
			List<Category> listCate = cm.getCategory();
			String categoryname =null;
			int id_category = 0;
			int id =0;
			for(Category cate : listCate) {
				categoryname = cate.getCategoryname();
				id = cate.getId();
				if(categoryname.equals(category)) {
					categoryname = ""+id;
					id_category = Integer.valueOf(categoryname);
				}
			}
			Part part =request.getPart("photo1");
			ProductModel pm = new  ProductModel();
			
			String realPart ="F:\\JSP_Project\\JSP_Project\\WebContent\\Uploads";
			String image =Path.of(part.getSubmittedFileName()).getFileName().toString();
			if(!Files.exists(Path.of(realPart))) {
				Files.createDirectory(Path.of(realPart));
			}
			part.write(realPart+ "/"+image);
			pm.insertProduct(productname, price, sale, image, describe, status, "0", id_category);
		} catch (Exception e) {
			
		}
		response.sendRedirect("product_manager");
	}

}
