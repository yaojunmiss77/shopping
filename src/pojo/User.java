/**
 * 
 * @author yaojun
 * @use 用户对象
 * @date 2015-12-24
 *
 */
package pojo;

/**
 * @author yaojun
 * @category 用户表单
 * @param id 
 * @param name 员工姓名
 * @param number 员工编号
 * @param telNumber 员工电话号码
 * @param sex 员工性别
 * @param age 员工年龄
 * @param imagePath 员工图片路径
 * @param sellId 销售表单的id
 */
public class User implements java.io.Serializable{
	
	private Integer id;
	private String name;
	private String number;
	private String password;
	private String telNumber;
	private String sex;
	private Integer age;
	private String imagePath;
	private Integer sellId;
	public User() {
		super();
	}
	public User(String name, String number, String password, String telNumber,
			String sex, Integer age, String imagePath, Integer sellId) {
		super();
		this.name = name;
		this.number = number;
		this.password = password;
		this.telNumber = telNumber;
		this.sex = sex;
		this.age = age;
		this.imagePath = imagePath;
		this.sellId = sellId;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTelNumber() {
		return telNumber;
	}
	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public Integer getSellId() {
		return sellId;
	}
	public void setSellId(Integer sellId) {
		this.sellId = sellId;
	}
	
}


