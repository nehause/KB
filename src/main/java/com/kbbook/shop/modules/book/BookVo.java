package com.kbbook.shop.modules.book;

import com.kbbook.shop.common.base.BaseVo;

public class BookVo extends BaseVo{
	private String bookSeq;
	private Integer pageNum;
	
	//join
	private String book_commentSeq;
	private String memberSeq;
	private String writerSeq;

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

	public String getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getWriterSeq() {
		return writerSeq;
	}

	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}

	
	
	

}
