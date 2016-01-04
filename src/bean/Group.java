package bean;

public class Group {
	
	private String name;
	private String content;
	public Group() {
		super();
	}
	public Group(String name, String content) {
		super();
		this.name = name;
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	

}
