package com.kbbook.shop.modules.writer;

import java.sql.Date;

public class Writer {

	private String writerSeq;
	private String name;
	private String image;
	private String introduce;
	private Integer delNy;
	private Date registration;
	private Date correctation;
	
	//subquery
	private String writtenBook;
	
	
	public String getWriterSeq() {
		return writerSeq;
	}
	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Date getRegistration() {
		return registration;
	}
	public void setRegistration(Date registration) {
		this.registration = registration;
	}
	public Date getCorrectation() {
		return correctation;
	}
	public void setCorrectation(Date correctation) {
		this.correctation = correctation;
	}
	public String getWrittenBook() {
		return writtenBook;
	}
	public void setWrittenBook(String writtenBook) {
		this.writtenBook = writtenBook;
	}
	
	
	
	
}
