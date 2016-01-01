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
 * @param reserveNum 库存数量
 * @param offerings 供货商
 * @param sellPrice 售价
 * @param purchasePrice 进价
 * @param sellId 销售表单的id主键
 *
 */
public class Goods implements java.io.Serializable{
	
	private Integer id;
	private String name;
	private String number;
	private Integer type;
	private Integer reserveNum;
	private String imagePath;
	private String offerings;
	private Float sellPrice;
	private Float purchasePrice;
	private Sell sell;
	public Goods() {
		super();
	}
	public Goods(String name, String number, Integer type, Integer reserveNum, String imagePath, String offerings, Float sellPrice,
			Float purchasePrice, Sell sell) {
		super();
		this.name = name;
		this.number = number;
		this.type = type;
		this.reserveNum = reserveNum;
		this.imagePath = imagePath;
		this.offerings = offerings;
		this.sellPrice = sellPrice;
		this.purchasePrice = purchasePrice;
		this.sell = sell;
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
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getReserveNum() {
		return reserveNum;
	}
	public void setReserveNum(Integer reserveNum) {
		this.reserveNum = reserveNum;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getOfferings() {
		return offerings;
	}
	public void setOfferings(String offerings) {
		this.offerings = offerings;
	}
	public Float getSellPrice() {
		return sellPrice;
	}
	public void setSellPrice(Float sellPrice) {
		this.sellPrice = sellPrice;
	}
	public Float getPurchasePrice() {
		return purchasePrice;
	}
	public void setPurchasePrice(Float purchasePrice) {
		this.purchasePrice = purchasePrice;
	}
	public Sell getSell() {
		return sell;
	}
	public void setSell(Sell sell) {
		this.sell = sell;
	}
}
