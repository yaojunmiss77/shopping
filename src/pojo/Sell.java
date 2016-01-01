/**
 * @author yaojun
 * @use 销售表单
 * @date 2015-12-25
 */
package pojo;

import java.util.Date;
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
	private Set sellGoods = new HashSet(0);
	private User user;
	public Sell() {
		super();
	}
	public Sell(String number, java.util.Date sellDate, Set sellGoods, User user) {
		super();
		this.number = number;
		this.sellDate = sellDate;
		this.sellGoods = sellGoods;
		this.user = user;
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
	public Set getSellGoods() {
		return sellGoods;
	}
	public void setSellGoods(Set sellGoods) {
		this.sellGoods = sellGoods;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	

}
