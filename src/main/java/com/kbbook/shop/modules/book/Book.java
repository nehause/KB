package com.kbbook.shop.modules.book;

import java.sql.Date;
import java.sql.Timestamp;

import com.kbbook.shop.modules.writer.Writer;

public class Book extends Writer {
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
	private String topic;
	private String introduce;
	private String image;
	private String list;
	private String content;
	private String rop;
	private Integer stock;
	private Integer amount;
	private Integer delNy;
	private String writer_writerSeq;
	//정보 수정일
	private Date doc;
	
	
	private int price;
	
	// join
	private String writer;
	
	//join
	private String book_commentSeq;
	private String book_bookSeq;
	private String memberSeq;
	private Timestamp time;
	private Timestamp toc;
	private Integer grade;
	private String comment;
	private String userName;
	// 추가 변수(총 평점)
	private double gradeAVG;
		
		
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
	
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
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
	public Date getDoc() {
		return doc;
	}
	public void setDoc(Date doc) {
		this.doc = doc;
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
	public String getBook_commentSeq() {
		return book_commentSeq;
	}
	public void setBook_commentSeq(String book_commentSeq) {
		this.book_commentSeq = book_commentSeq;
	}
	public String getBook_bookSeq() {
		return book_bookSeq;
	}
	public void setBook_bookSeq(String book_bookSeq) {
		this.book_bookSeq = book_bookSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public Timestamp getToc() {
		return toc;
	}
	public void setToc(Timestamp toc) {
		this.toc = toc;
	}
	public Integer getGrade() {
		return grade;
	}
	public void setGrade(Integer grade) {
		this.grade = grade;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public double getGradeAVG() {
		return gradeAVG;
	}
	public void setGradeAVG(double gradeAVG) {
		this.gradeAVG = gradeAVG;
	}
	
	
	
	
	
	
	
}
