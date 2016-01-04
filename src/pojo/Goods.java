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
 * @param type 商品类型 0表示饮品 1表示水果 2表示纸类 4表示饼干 5表示熟食 6表示烟类 7表示酒类 8表示学习
 * @param reserveNum 库存数量
 * @param offerings 供货商
 * @param sellPrice 售价
 * @param purchasePrice 进价
 * @param sellId 销售表单的id主键
 * @param sellNum 销量
 * @param unit 单位
 *
 */
@SuppressWarnings("serial")
public class Goods implements java.io.Serializable{
	
	private Integer id;
	private String name;
	private String number;
	private String type;
	private Integer reserveNum;
	private String imagePath;
	private String offerings;
	private Float sellPrice;
	private Float purchasePrice;
	private Integer sellNum;
	private String unit;
	private Float discount;
	private Sell sell;
	
	public Goods() {
		super();
	}
	public Goods(String name, String number, String type, Integer reserveNum, String imagePath, String offerings, Float sellPrice,
			Float purchasePrice,Integer sellNum,String unit,Float discount, Sell sell) {
		super();
		this.name = name;
		this.number = number;
		this.type = type;
		this.reserveNum = reserveNum;
		this.imagePath = imagePath;
		this.offerings = offerings;
		this.sellPrice = sellPrice;
		this.purchasePrice = purchasePrice;
		this.sellNum = sellNum;
		this.unit =  unit;
		this.discount = discount;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
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
	public Integer getSellNum() {
		return sellNum;
	}
	public void setSellNum(Integer sellNum) {
		this.sellNum = sellNum;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	public Float getDiscount() {
		return discount;
	}
	public void setDiscount(Float discount) {
		this.discount = discount;
	}
	public Sell getSell() {
		return sell;
	}
	public void setSell(Sell sell) {
		this.sell = sell;
	}
}
