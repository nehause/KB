package com.kbbook.shop.modules.book;

import java.sql.Date;

public class Book {
	private String bookSeq;
	private String sign;
	private String name;
	private String subName;
	private String publisher;
	private Date dop;
	private Date dor;
	private Integer cost;
	private double sale;
	private double accmulate;
	private String isbn;
	private Integer page;
	private String size;
	private String introduce;
	private String image;
	private String list;
	private String content;
	private String rop;
	private Integer stock;
	private Integer amount;
	private Integer delNy;
	private String writer_writerSeq;
	
	private int price;
	
	// join
	private String writer;
	
	public String getBookSeq() {
		return bookSeq;
	}
	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getDop() {
		return dop;
	}
	public void setDop(Date dop) {
		this.dop = dop;
	}
	public Date getDor() {
		return dor;
	}
	public void setDor(Date dor) {
		this.dor = dor;
	}
	public Integer getCost() {
		return cost;
	}
	public void setCost(Integer cost) {
		this.cost = cost;
	}
	public double getSale() {
		return sale;
	}
	public void setSale(double sale) {
		this.sale = sale;
	}
	public double getAccmulate() {
		return accmulate;
	}
	public void setAccmulate(double accmulate) {
		this.accmulate = accmulate;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRop() {
		return rop;
	}
	public void setRop(String rop) {
		this.rop = rop;
	}
	public Integer getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	//join

	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriter_writerSeq() {
		return writer_writerSeq;
	}
	public void setWriter_writerSeq(String writer_writerSeq) {
		this.writer_writerSeq = writer_writerSeq;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
	
	
}
