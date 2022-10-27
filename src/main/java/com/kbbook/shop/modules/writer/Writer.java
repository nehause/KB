package com.kbbook.shop.modules.writer;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.kbbook.shop.common.base.Base;

public class Writer extends Base {

	private String writerSeq;
	private String writerName;
	private String writerImage;
	private String writerIntroduce;
	private Integer writerDelNy;
	private Date writerRegistration;
	private Date writerCorrectation;
	
	//subquery
	private String writtenBook;
	
	
	//upload
	
	private MultipartFile[] uploadWriterImage;
	private Integer uploadWriterImageMaxNumber;
	private String[] uploadWriterImageDeleteSeq;
	private String[] uploadWriterImageDeletePathFile;	
	
	//upload base

	private String tableName;
	
	private String seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private Integer delNy;
	private String pseq;

	
	public String getWriterSeq() {
		return writerSeq;
	}
	public void setWriterSeq(String writerSeq) {
		this.writerSeq = writerSeq;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getWriterImage() {
		return writerImage;
	}
	public void setWriterImage(String writerImage) {
		this.writerImage = writerImage;
	}
	public String getWriterIntroduce() {
		return writerIntroduce;
	}
	public void setWriterIntroduce(String writerIntroduce) {
		this.writerIntroduce = writerIntroduce;
	}
	public Integer getWriterDelNy() {
		return writerDelNy;
	}
	public void setWritderDelNy(Integer writerDelNy) {
		this.writerDelNy = writerDelNy;
	}
	public Date getWriterRegistration() {
		return writerRegistration;
	}
	public void setWriterRegistration(Date writerRegistration) {
		this.writerRegistration = writerRegistration;
	}
	public Date getWriterCorrectation() {
		return writerCorrectation;
	}
	public void setWriterCorrectation(Date writerCorrectation) {
		this.writerCorrectation = writerCorrectation;
	}
	public String getWrittenBook() {
		return writtenBook;
	}
	public void setWrittenBook(String writtenBook) {
		this.writtenBook = writtenBook;
	}
	
	// upload
	
	public MultipartFile[] getUploadWriterImage() {
		return uploadWriterImage;
	}
	public void setUploadWriterImage(MultipartFile[] uploadWriterImage) {
		this.uploadWriterImage = uploadWriterImage;
	}
	
	public Integer getUploadWriterImageMaxNumber() {
		return uploadWriterImageMaxNumber;
	}
	public void setUploadWriterImageMaxNumber(Integer uploadWriterImageMaxNumber) {
		this.uploadWriterImageMaxNumber = uploadWriterImageMaxNumber;
	}
	public String[] getUploadWriterImageDeleteSeq() {
		return uploadWriterImageDeleteSeq;
	}
	public void setUploadWriterImageDeleteSeq(String[] uploadWriterImageDeleteSeq) {
		this.uploadWriterImageDeleteSeq = uploadWriterImageDeleteSeq;
	}
	public String[] getUploadWriterImageDeletePathFile() {
		return uploadWriterImageDeletePathFile;
	}
	public void setUploadWriterImageDeletePathFile(String[] uploadWriterImageDeletePathFile) {
		this.uploadWriterImageDeletePathFile = uploadWriterImageDeletePathFile;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public void setWriterDelNy(Integer writerDelNy) {
		this.writerDelNy = writerDelNy;
	}
	
		
	
	
}
