package com.kbbook.shop.modules.book;

import com.kbbook.shop.common.base.BaseVo;

public class BookVo extends BaseVo{
	private String bookSeq;
	private Integer pageNum;
	
	//join
	private String book_commentSeq;

	public String getBookSeq() {
		return bookSeq;
	}

	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public String getBook_commentSeq() {
		return book_commentSeq;
	}

	public void setBook_commentSeq(String book_commentSeq) {
		this.book_commentSeq = book_commentSeq;
	}

	
	
	

}
