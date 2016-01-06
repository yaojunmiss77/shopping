/**
 * @author yaojun
 * @use 销售表单
 * @date 2015-12-25
 */
package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * 
 * @author yaojun
 * @category 销售表单
 * @param number 销售编号
 * @param sellDate 销售时间
 * @param sellGoods 该笔销售单所销售的货物
 * @param user 该笔销售单所对应的用户
 *
 */
public class Sell implements java.io.Serializable{
	
	private Integer id;
	private String number;
	private java.util.Date sellDate;
	private User user;
	private Set sellDetails = new HashSet(0);
	public Sell() {
		super();
	}
	public Sell(String number, java.util.Date sellDate, User user,Set sellDetails) {
		super();
		this.number = number;
		this.sellDate = sellDate;
		this.user = user;
		this.sellDetails = sellDetails;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public java.util.Date getSellDate() {
		return sellDate;
	}
	public void setSellDate(java.util.Date sellDate) {
		this.sellDate = sellDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set getSellDetails() {
		return sellDetails;
	}
	public void setSellDetails(Set sellDetails) {
		this.sellDetails = sellDetails;
	}

}
