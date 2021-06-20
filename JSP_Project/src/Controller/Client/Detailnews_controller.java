package Controller.Client;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.NewsModel;
import Model.ProductModel;
import Object.News;
import Object.Product;

/**
 * Servlet implementation class Detailnews_controller
 */
@WebServlet("/detail_news")
public class Detailnews_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detailnews_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int getId = Integer.parseInt(request.getParameter("id"));
		NewsModel nm = new NewsModel();
		
		News nw = nm.getNewbyId(getId);
		request.setAttribute("detail_new", nw);
		request.setAttribute("page","detailnews");
		request.getRequestDispatcher("decorators/web.jsp").forward(request, response);;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
