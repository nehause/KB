package com.kbbook.shop.modules.order;

import com.kbbook.shop.common.base.BaseVo;

public class OrderVo extends BaseVo {
	
	private String purchaseSeq;
	private String bookSeq;
	private String transportSeq;
	private String sessSeq;
	

	public String getPurchaseSeq() {
		return purchaseSeq;
	}

	public void setPurchaseSeq(String purchaseSeq) {
		this.purchaseSeq = purchaseSeq;
	}

	public String getBookSeq() {
		return bookSeq;
	}

	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}

	public String getTransportSeq() {
		return transportSeq;
	}

	public void setTransportSeq(String transportSeq) {
		this.transportSeq = transportSeq;
	}

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	
	
	
}
