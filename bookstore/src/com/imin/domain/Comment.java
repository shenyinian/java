package com.imin.domain;

/**
 * class：评论实体类
 * author：patmiu
 * time：2018年9月29日下午5:06:41
 */
public class Comment {
	/*
	 * 评论的主键
	 */
	private Integer id;
	/*
	 * 评论的人的id
	 */
	private Customer customer;
	/*
	 * 被评论书的id
	 */
	private String bid;
	/*
	 * 被评论的书名
	 */
	private String bookname;
	/*
	 * 满意度 1:好评   2:中评 3:差评  4:追评
	 */
	private Integer satisDegree;
	/*
	 * 评论的内容
	 */
	private String content;
	/*
	 * 评论的时间
	 */
	private String commentTime;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public Integer getSatisDegree() {
		return satisDegree;
	}
	public void setSatisDegree(Integer satisDegree) {
		this.satisDegree = satisDegree;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}

}
