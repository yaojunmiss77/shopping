package pojo;

/**
 * @category 销售详情表单
 * @author yaojun
 * @param goodsNumber 销售该商品的编号
 * @param goodsName 销售该商品的名称
 * @param goodsSellNum 销售该商品的价格
 * @param sell
 */
public class SellDetail {
	
	private Integer id;
	private String goodsNumber;
	private String goodsName;
	private Integer goodsSellNum;
	private Goods goods;
	private Sell sell;
	public SellDetail() {
		super();
	}
	public SellDetail(String goodsNumber, String goodsName, Integer goodsSellNum, Goods goods,Sell sell) {
		super();
		this.goodsNumber = goodsNumber;
		this.goodsName = goodsName;
		this.goodsSellNum = goodsSellNum;
		this.goods = goods;
		this.sell = sell;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoodsNumber() {
		return goodsNumber;
	}
	public void setGoodsNumber(String goodsNumber) {
		this.goodsNumber = goodsNumber;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getGoodsSellNum() {
		return goodsSellNum;
	}
	public void setGoodsSellNum(Integer goodsSellNum) {
		this.goodsSellNum = goodsSellNum;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	public Sell getSell() {
		return sell;
	}
	public void setSell(Sell sell) {
		this.sell = sell;
	}
	
}
