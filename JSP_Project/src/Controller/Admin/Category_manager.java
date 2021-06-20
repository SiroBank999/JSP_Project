package Controller.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.CategoryModel;
import Object.Category;

/**
 * Servlet implementation class Category
 */
@WebServlet("/category_manager")
public class Category_manager extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String indexPage = request.getParameter("index");
		if(indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		CategoryModel cm = new CategoryModel();
		int count =cm.getTotalCategory();
		int andPage =count/3;
		if(count % 3 != 0) {
			andPage++;
		}
		List<Category> list = cm.pagingCategory(index);
		request.setAttribute("listCate", list);
		request.setAttribute("andPag",andPage);
		request.setAttribute("tag", index);
		request.setAttribute("page", "category");
		request.getRequestDispatcher("decorators/admin.jsp").forward(request, response);

	}

	

}
