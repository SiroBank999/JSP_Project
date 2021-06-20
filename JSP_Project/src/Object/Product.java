package Object;

public class Product {
	private int id;
	private String productname;
	private double price;
	private double sale;
	private String image;
	private String describe;
	private String status;
	private String view;
	private int id_cate;
	
	public Product() {
	}
	public Product(int id, String productname, double price, double sale, String image, String describe, String status,
			String view, int id_cate) {
		this.id = id;
		this.productname = productname;
		this.price = price;
		this.sale = sale;
		this.image = image;
		this.describe = describe;
		this.status = status;
		this.view = view;
		this.id_cate = id_cate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getSale() {
		return sale;
	}
	public void setSale(double sale) {
		this.sale = sale;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public int getId_cate() {
		return id_cate;
	}
	public void setId_cate(int id_cate) {
		this.id_cate = id_cate;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", productname=" + productname + ", price=" + price + ", sale=" + sale + ", image="
				+ image + ", describe=" + describe + ", status=" + status + ", view=" + view + ", id_cate=" + id_cate
				+ "]";
	}
	

}
