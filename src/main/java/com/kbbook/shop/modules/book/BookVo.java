package com.kbbook.shop.modules.book;

import com.kbbook.shop.common.base.BaseVo;

public class BookVo extends BaseVo{
	private String bookSeq;
	private Integer PageNum;

	public String getBookSeq() {
		return bookSeq;
	}

	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}

	public Integer getPageNum() {
		return PageNum;
	}

	public void setPageNum(Integer pageNum) {
		PageNum = pageNum;
	}
	
	

}
