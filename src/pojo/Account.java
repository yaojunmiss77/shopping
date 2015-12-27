/**
 * @author yaojun
 * @use 账单表单
 * @date 2015-12-25
 */
package pojo;

import java.util.Date;

/**
 * @author yaojun
 * @category 账单表单
 * @param id
 * @param number 账单编号
 * @param type 账单类型 0表示售货 1表示赌场 2表示其它
 * @param date 账单日期
 * @param expenditure 支出金额
 * @param contribution 支入金额
 * @param profit 利润
 * @param remarks 备注
 */
public class Account implements java.io.Serializable{
	
	private Integer id;
	private String number;
	private Integer type;
	private java.util.Date date;
	private Float expenditure;
	private Float contribution;
	private Float profit;
	private String remarks;	

}
