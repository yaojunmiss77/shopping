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
	private String telNumber;
	private String sex;
	private Integer age;
	private String imagePath;
	private Integer sellId;
	
	
}


