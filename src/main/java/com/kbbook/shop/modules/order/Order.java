package com.kbbook.shop.modules.order;

import java.sql.Timestamp;

import com.kbbook.shop.modules.transport.Transport;


public class Order extends Transport{
	
	private String purchaseSeq;
	private String member_memberSeq;
	private String transport_transportSeq;
	private String payment;
	private Timestamp time;
	private Integer purchaseStatus;
	private Integer delNy;
	//수정시간
	private Timestamp Toc;
	
	//dmin join
	private String memberName;
	private String purchaseBook;
	private String purchaseCount;
	private Integer priceSum;
	
	//user join
	private String bookSeq;
	private String name;
	private String sign;
	private Integer price;
	private Integer stock;
	private String purchase_bookSeq;
	private Integer count;
	private Integer bookPrice;
	
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
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
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
	public Timestamp getToc() {
		return Toc;
	}
	public void setToc(Timestamp toc) {
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
	public String getBookSeq() {
		return bookSeq;
	}
	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getPurchase_bookSeq() {
		return purchase_bookSeq;
	}
	public void setPurchase_bookSeq(String purchase_bookSeq) {
		this.purchase_bookSeq = purchase_bookSeq;
	}
	public Integer getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Integer bookPrice) {
		this.bookPrice = bookPrice;
	}
	
	

}
