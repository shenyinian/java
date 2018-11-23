package com.imin.domain;

/**
 * class：订单详情类
 * author：patmiu
 * time：2018年9月29日下午5:33:50
 */
public class Order_details extends Orders{

	/**
	 * 主键
	 */
	private Integer id;
	/**
	 * 订单编号
	 */
	private String oid;
	/**
	 * 书籍编号
	 */
	private String bid;
	/**
	 * 书籍的数量
	 */
	private Integer bcount;
	
	/**
	 * 书籍的名称
	 */
	private String name;
	
	/**
	 * 书籍的折扣价
	 */
	private Double discountprice;
	
	/**
	 * 书籍的小图片
	 */
	private String imgurl;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	/*public String getOid() {
		return oid;
	}
	public void setOid(String oid) {
		this.oid = oid;
	}*/
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public Integer getBcount() {
		return bcount;
	}
	public void setBcount(Integer bcount) {
		this.bcount = bcount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(Double discountprice) {
		this.discountprice = discountprice;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	
	
}
