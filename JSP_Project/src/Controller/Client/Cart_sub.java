package Controller.Client;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.ProductModel;
import Object.Item;
import Object.Order;
import Object.Product;

/**
 * Servlet implementation class Cart_sub
 */
@WebServlet("/cart_sub")
public class Cart_sub extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart_sub() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = 1;
		int id = Integer.parseInt(request.getParameter("idP"));
		ProductModel pm = new ProductModel();
		Product pd = pm.getProductbyId(id);
		HttpSession  session =request.getSession();
		Order order = (Order) session.getAttribute("order");
		List<Item> listItems = order.getItems();
		for(Item item: listItems){
			if(item.getProduct().getId() == pd.getId()) {
				item.setQuantity(item.getQuantity()-quantity);
			}
		}
		session.setAttribute("order", order);
		response.sendRedirect("cart");
		
	}


}
