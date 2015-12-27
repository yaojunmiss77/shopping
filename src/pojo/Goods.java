/**
 * 
 * @author yaojun
 * @use 商品对象
 * @date 2015-12-25
 *
 */
package pojo;

/**
 * 
 * @author yaojun
 * @category 商品表单
 * @param name 商品名称
 * @param number 商品编号
 * @param type 商品类型
 * @param sellStatus 销售状态  0表示未销售  1表示已经销售
 * @param reserveNum 库存数量
 * @param offerings 供货商
 * @param sellPrice 售价
 * @param purchasePrice 进价
 * @param profit 该商品的销售利润
 * @param sellId 销售表单的id主键
 *
 */
public class Goods implements java.io.Serializable{
	
	private Integer id;
	private String name;
	private String number;
	private Integer type;
	private Integer sellStatus;
	private Integer reserveNum;
	private String offerings;
	private Float sellPrice;
	private Float purchasePrice;
	private Float profit;
	private Integer sellId;
	
}
