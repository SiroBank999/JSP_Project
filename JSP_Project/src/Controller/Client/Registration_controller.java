package Controller.Client;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.UserModel;

/**
 * Servlet implementation class Registration_controller
 */
@WebServlet("/registraton")
public class Registration_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration_controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("pages/Client/signupuser.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String fullname = request.getParameter("fullname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		if (fullname.isEmpty() || username.isEmpty() || password.isEmpty()|| phone.isEmpty()|| email.isEmpty() ) {
			request.setAttribute("alert",1);
			request.getRequestDispatcher("pages/Client/signupuser.jsp").forward(request, response);
			
		}else {
			UserModel md = new UserModel();
			md.insertAcc(fullname, username, password, phone, email, "0");
			response.sendRedirect("login_user");
		}
		

	}

}
