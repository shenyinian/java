package com.imin.vo;

import java.util.List;

import com.imin.domain.Book;
import com.imin.domain.Comment;


/**
 * @Description: 详情页面的vo对象，封装页面需要的购买书籍、5本热销、3本之前同时购买过的书籍、以及5条评论信息
 * @Version:1.0
 * @author nick
 * @date 2018年5月30日
 */
public class DetailPageVo {
	//要购买的书籍
	private Book book;
	//同类5本热销的书籍
	private List<Book> hotBooks;
	//3本之前同时购买过的书籍
	private List<Book> boughtBooks;
	//5条此书的评论信息
	private List<Comment> comments;
	
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public List<Book> getHotBooks() {
		return hotBooks;
	}
	public void setHotBooks(List<Book> hotBooks) {
		this.hotBooks = hotBooks;
	}
	public List<Book> getBoughtBooks() {
		return boughtBooks;
	}
	/**
	 * 同时购买过的书籍
	 */
	public void setBoughtBooks(List<Book> boughtBooks) {
		this.boughtBooks = boughtBooks;
	}
	public List<Comment> getComments() {
		return comments;
	}
	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
}
