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
import Model.ProductModel;
import Object.Banner;
import Object.Category;
import Object.Product;

/**
 * Servlet implementation class Shop_controller
 */
@WebServlet("/shop")
public class Shop_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Shop_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel pro = new ProductModel();
		List<Product> listproduct  = pro.getProduct();
		CategoryModel cm = new CategoryModel();
		List<Category> listcategory = cm.getListCategory();
		BannerModel bm = new BannerModel();
		List<Banner> listBanner = bm.getBanner();
		request.setAttribute("banner", listBanner);
		request.setAttribute("product", listproduct);
		request.setAttribute("category", listcategory);
		request.setAttribute("page", "shop");
		request.getRequestDispatcher("decorators/web.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
