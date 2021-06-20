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

/**
 * Servlet implementation class ProductManager
 */
@WebServlet("/product_manager")
public class Product_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product_manager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryModel categoryModel = new CategoryModel();
		List<Category> listcate = categoryModel.getCategory();
		String indexPage = request.getParameter("index");
		if(indexPage == null) {
			indexPage = "1";
		}
		int index =Integer.parseInt(indexPage);
		ProductModel pm = new ProductModel();
		int count  = pm.getTotalProduct();
		int endPage = count/10;
		if(endPage % 10 != 0) {
			endPage++;
			
		}
		List<Product>  list = pm.pagingProduct(index);
		request.setAttribute("listproduct", list);
		request.setAttribute("andPag",endPage);
		request.setAttribute("tag", index);
		request.setAttribute("listcategory", listcate);
		request.setAttribute("page", "product");
		request.getRequestDispatcher("decorators/admin.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
