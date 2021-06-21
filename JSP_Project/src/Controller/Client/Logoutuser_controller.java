package Controller.Client;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/logout_user")
public class Logoutuser_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Logoutuser_controller() {
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		session.removeAttribute("user");
		response.sendRedirect("login_user");
		}

}
