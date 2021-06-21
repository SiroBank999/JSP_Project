package Controller.Client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.BannerModel;
import Model.CategoryModel;
import Model.NewsModel;
import Model.ProductModel;
import Object.Banner;
import Object.Category;
import Object.News;
import Object.Product;

/**
 * Servlet implementation class Category_controller
 */
@WebServlet("/home_client")
public class Home_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CategoryModel categoryModel = new CategoryModel();
		List<Category> listcate = categoryModel.getCategory();
		BannerModel bm = new BannerModel();
		List<Banner> list = bm.getBanner();
		NewsModel nm = new NewsModel();
		List<News> listNews  = nm.getNews();
		request.setAttribute("news",listNews );
		request.setAttribute("banner", list);
		request.setAttribute("listcategory", listcate);
		request.setAttribute("page", "home");
		getProductsale(request, response);
		request.getRequestDispatcher("decorators/web.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void getProductsale(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel pm = new ProductModel();
		List<Product> listproductsale = pm.getProductsale();
		request.setAttribute("listproductsale", listproductsale);
		
		
	}

}
