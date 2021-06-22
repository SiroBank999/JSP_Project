package Controller.Client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.NewsModel;

import Object.News;

/**
 * Servlet implementation class News_controller
 */
@WebServlet("/news")
public class News_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String indexPage = request.getParameter("index");
		if(indexPage == null) {
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		NewsModel cm = new NewsModel();
		int count =cm.getTotalNews();
		int andPage =count/9;
		if(count % 9 != 0) {
			andPage++;
		}
		List<News> list = cm.pagingNews(index);
		request.setAttribute("listNews", list);
		request.setAttribute("andPag",andPage);
		request.setAttribute("tag", index);
		request.setAttribute("page", "news");
		request.getRequestDispatcher("decorators/web.jsp").forward(request, response);

	}

	}

	

