package com.kbbook.shop.modules.transport;

import java.sql.Date;

public class Transport {
	
	private String transportSeq;
	private String member_memberSeq;
	private Integer transportDiv;
	private String phone;
	private String home;
	private String zip;
	private String address1;
	private String address2;
	private String lag;
	private String lat;
	private Integer useNy;
	private Integer delNy;
	private Date registration;
	
	//join
	
	private String name;
	
	public String getTransportSeq() {
		return transportSeq;
	}
	public void setTransportSeq(String transportSeq) {
		this.transportSeq = transportSeq;
	}
	public String getMember_memberSeq() {
		return member_memberSeq;
	}
	public void setMember_memberSeq(String member_memberSeq) {
		this.member_memberSeq = member_memberSeq;
	}
	public Integer getTransportDiv() {
		return transportDiv;
	}
	public void setTransportDiv(Integer transportDiv) {
		this.transportDiv = transportDiv;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getLag() {
		return lag;
	}
	public void setLag(String lag) {
		this.lag = lag;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public Integer getUseNy() {
		return useNy;
	}
	public void setUseNy(Integer useNy) {
		this.useNy = useNy;
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
	
	//join
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
