package Object;

public class News {
	private int id ;
	private String title;
	private String describe;
	private String image;
	private String content;
	private int id_admin;
	private int status ;
	public News() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public News(int id, String title, String describe, String image, String content, int id_admin, int status) {
		super();
		this.id = id;
		this.title = title;
		this.describe = describe;
		this.image = image;
		this.content = content;
		this.id_admin = id_admin;
		this.status = status;
	}
	
	
}
