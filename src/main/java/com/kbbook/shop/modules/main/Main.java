package com.kbbook.shop.modules.main;

import com.kbbook.shop.modules.book.Book;

public class Main extends Book {
	
	private String shortIntro;
	private String memberSeq;
	private String id;
	private String password;
	private String name;
	private String userName;
	
	
	public Object header;
	public String resultCode;
	public String resultMsg;

	public Object body;
	public int pageNo;
	public int totalCount;
	public int numOfRows;
	public String dataType;
	
	
	public Object[] items;
	public String baseDate;
	public String baseTime;
	public String weatherNm;
	public String cctvId;
	public String cctvNm;
	public String getShortIntro() {
		return shortIntro;
	}
	public void setShortIntro(String shortIntro) {
		this.shortIntro = shortIntro;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(int numOfRows) {
		this.numOfRows = numOfRows;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}
	public String getBaseDate() {
		return baseDate;
	}
	public void setBaseDate(String baseDate) {
		this.baseDate = baseDate;
	}
	public String getBaseTime() {
		return baseTime;
	}
	public void setBaseTime(String baseTime) {
		this.baseTime = baseTime;
	}
	public String getWeatherNm() {
		return weatherNm;
	}
	public void setWeatherNm(String weatherNm) {
		this.weatherNm = weatherNm;
	}
	public String getCctvId() {
		return cctvId;
	}
	public void setCctvId(String cctvId) {
		this.cctvId = cctvId;
	}
	public String getCctvNm() {
		return cctvNm;
	}
	public void setCctvNm(String cctvNm) {
		this.cctvNm = cctvNm;
	}
	public String getDataType() {
		return dataType;
	}
	public void setDataType(String dataType) {
		this.dataType = dataType;
	}
	
	
	
}
