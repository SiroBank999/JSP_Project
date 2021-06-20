package Object;

public class Category {
	private int id;
	private String categoryname;
	private String images;
	public Category() {
	}
	public Category(int id, String categoryname, String images) {
		this.id = id;
		this.categoryname = categoryname;
		this.images = images;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", categoryname=" + categoryname + ", images=" + images + "]";
	}
	
	
	

}
