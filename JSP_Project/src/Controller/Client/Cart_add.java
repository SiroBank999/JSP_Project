package Controller.Client;

import java.io.IOException;
import java.util.ArrayList;
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
@WebServlet("/cart_add")
public class Cart_add extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Cart_add() {
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = 1;
		int id;
		
		ProductModel pm = new ProductModel();
		if(request.getParameter("idP") != null) {
			id = Integer.parseInt(request.getParameter("idP"));
			Product pd = pm.getProductbyId(id);
			if(pd != null) {
				if(request.getParameter("quantity")!= null) {
					quantity =Integer.parseInt(request.getParameter("quantity"));
				}
				HttpSession  session =request.getSession();
				
				if(session.getAttribute("order") == null) {
					Order order = new Order();
					List<Item> listItems = new ArrayList<>();
					Item item = new Item();
					item.setQuantity(quantity);
					item.setProduct(pd);
					item.setPrice(pd.getPrice());
					listItems.add(item);
					order.setItems(listItems);
					session.setAttribute("order", order);
					//session.setMaxInactiveInterval(6000);
					
				}else {
					Order order = (Order) session.getAttribute("order");
					List<Item> listItems = order.getItems();
					boolean check=false;
					for(Item item: listItems){
						if(item.getProduct().getId() == pd.getId()) {
							item.setQuantity(item.getQuantity()+quantity);
							check = true;
						}
					}
					if(check == false) {
						Item item = new Item();
						item.setQuantity(quantity);
						item.setProduct(pd);
						item.setPrice(pd.getPrice());
						listItems.add(item);
						
					}
					
					session.setAttribute("order", order);
					
					//session.setMaxInactiveInterval(6000);
					
				}
			}
			response.sendRedirect("cart");
		}else {
			response.sendRedirect("cart");
		}
	}
		

}
