package Object;

import java.util.List;

public class Order {
	private int id;
	private User user;
	private List<Item> items;
	private String status;
	
	public Order() {
	}
	public Order(int id, User user, List<Item> items, String status) {
		this.id = id;
		this.user = user;
		this.items = items;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Item> getItems() {
		return items;
	}
	public void setItems(List<Item> items) {
		this.items = items;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", user=" + user + ", items=" + items + ", status=" + status + "]";
	}
	
	

}
