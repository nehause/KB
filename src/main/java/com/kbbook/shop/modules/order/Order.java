package com.kbbook.shop.modules.order;

import java.sql.Date;

public class Order {
	
	private String purchaseSeq;
	private String member_memberSeq;
	private String transport_transportSeq;
	private String payment;
	private Date time;
	private Integer purchaseStatus;
	private Integer delNy;
	//수정시간
	private Date Toc;
	
	//join
	private String memberName;
	private String purchaseBook;
	private String purchaseCount;
	private Integer priceSum;
	
	
	public String getPurchaseSeq() {
		return purchaseSeq;
	}
	public void setPurchaseSeq(String purchaseSeq) {
		this.purchaseSeq = purchaseSeq;
	}
	public String getMember_memberSeq() {
		return member_memberSeq;
	}
	public void setMember_memberSeq(String member_memberSeq) {
		this.member_memberSeq = member_memberSeq;
	}
	public String getTransport_transportSeq() {
		return transport_transportSeq;
	}
	public void setTransport_transportSeq(String transport_transportSeq) {
		this.transport_transportSeq = transport_transportSeq;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public Integer getPurchaseStatus() {
		return purchaseStatus;
	}
	public void setPurchaseStatus(Integer purchaseStatus) {
		this.purchaseStatus = purchaseStatus;
	}
	
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Date getToc() {
		return Toc;
	}
	public void setToc(Date toc) {
		Toc = toc;
	}
	//join
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getPurchaseBook() {
		return purchaseBook;
	}
	public void setPurchaseBook(String purchaseBook) {
		this.purchaseBook = purchaseBook;
	}
	public String getPurchaseCount() {
		return purchaseCount;
	}
	public void setPurchaseCount(String purchaseCount) {
		this.purchaseCount = purchaseCount;
	}
	public Integer getPriceSum() {
		return priceSum;
	}
	public void setPriceSum(Integer priceSum) {
		this.priceSum = priceSum;
	}
	
	

}
