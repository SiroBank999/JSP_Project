package Controller.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CategoryModel;
import Model.ProductModel;
import Object.Category;
import Object.Product;


@WebServlet("/product_load_update")
public class Product_load_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id_pd;
    public Product_load_update() {
 
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		id_pd = Integer.parseInt(request.getParameter("id_pd"));
		CategoryModel categoryModel = new CategoryModel();
		List<Category> listcate = categoryModel.getCategory();
		request.setAttribute("listcategory", listcate);
		ProductModel pm = new ProductModel();
		Product pd =pm.getProductbyId(id_pd);
		request.setAttribute("pd", pd);
		request.setAttribute("page","product_update");
		request.getRequestDispatcher("decorators/admin.jsp").forward(request, response);
		
	
	}

	
	

}
