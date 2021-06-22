package Controller.Client;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.UserModel;
import Object.User;

/**
 * Servlet implementation class Infouser_controller
 */
@WebServlet("/info")
public class Infouser_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int id;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Infouser_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 id =Integer.parseInt(request.getParameter("id"));
		request.setAttribute("page","infouser");
		request.getRequestDispatcher("decorators/web.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pass = request.getParameter("Password");
		String repass = request.getParameter("rePassword");
		if(pass.equals(repass)){
			UserModel um = new UserModel();
			um.updatePassUser(pass, id);
			response.sendRedirect("home_client");
		}else {
			response.sendRedirect("info");
		}
		
		}
	}
	


