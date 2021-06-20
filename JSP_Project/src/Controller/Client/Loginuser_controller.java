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
 * Servlet implementation class Loginuser_controller
 */
@WebServlet("/login_user")
public class Loginuser_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginuser_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("pages/Client/loginuser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("Username");
		String password = request.getParameter("Password");
		UserModel um = new UserModel();
		User user = um.CheckUser(username, password);
		if (user == null) {
			request.setAttribute("alert", 1);
			request.getRequestDispatcher("pages/Client/loginuser.jsp").forward(request, response);
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			Cookie cusername = new Cookie("cusename", username);
			Cookie cpassword = new Cookie("cpassword", password);
			cusername.setMaxAge(100);
			cpassword.setMaxAge(100);
			response.addCookie(cusername);
			response.addCookie(cpassword);
			response.sendRedirect("home_client");
		}
	}
}
