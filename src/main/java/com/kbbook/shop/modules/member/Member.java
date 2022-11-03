package com.kbbook.shop.modules.member;

import java.sql.Date;
import java.sql.Timestamp;

import com.kbbook.shop.common.base.Base;


public class Member extends Base{
	
	private String memberSeq;
	private String id;
	private String password;
	private String name;
	private String userName;
	private Integer gender;
	private Date dob;
	private Integer telecom;
	private String phone;
	private String number;
	private String email;
	private String emailStart;
	private String emailEnd;
	private Integer emailLast;
	private String zip;
	private String address1;
	private String address2;
	private Integer privacy;
	private Integer email_ctr;
	private Integer kakao_ctr;
	private Integer sms_ctr;
	private Integer accmulate;
	private Integer memberCount;
	private Integer memberDelNy;
	private Integer memberUseNy;
	private Timestamp registration;
	private Timestamp correctation;
	
	private boolean autoLogin;
	
	// favorite table
	
	private String bookSeq;
	private String bookSign;
	private String bookName;
	private Integer bookPrice;
	private Integer bookCost;
	
	//httpsession
	
	private String sessSeq;
	
	//order join
	
	private String purchaseSeq;
	private String transport_transportSeq;
	private String payment;
	private Timestamp time;
	private Integer purchaseStatus;
	private Integer delNy;
	//수정시간
	private Timestamp Toc;
	private String memberName;
	private String purchaseBook;
	private String purchaseCount;
	private Integer priceSum;
	
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
	public Integer getGender() {
		return gender;
	}
	public void setGender(Integer gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public Integer getTelecom() {
		return telecom;
	}
	public void setTelecom(Integer telecom) {
		this.telecom = telecom;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailStart() {
		return emailStart;
	}
	public void setEmailStart(String emailStart) {
		this.emailStart = emailStart;
	}
	public String getEmailEnd() {
		return emailEnd;
	}
	public void setEmailEnd(String emailEnd) {
		this.emailEnd = emailEnd;
	}
	public Integer getEmailLast() {
		return emailLast;
	}
	public void setEmailLast(Integer emailLast) {
		this.emailLast = emailLast;
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
	public Integer getPrivacy() {
		return privacy;
	}
	public void setPrivacy(Integer privacy) {
		this.privacy = privacy;
	}
	public Integer getEmail_ctr() {
		return email_ctr;
	}
	public void setEmail_ctr(Integer email_ctr) {
		this.email_ctr = email_ctr;
	}
	public Integer getKakao_ctr() {
		return kakao_ctr;
	}
	public void setKakao_ctr(Integer kakao_ctr) {
		this.kakao_ctr = kakao_ctr;
	}
	public Integer getSms_ctr() {
		return sms_ctr;
	}
	public void setSms_ctr(Integer sms_ctr) {
		this.sms_ctr = sms_ctr;
	}
	public Integer getAccmulate() {
		return accmulate;
	}
	public void setAccmulate(Integer accmulate) {
		this.accmulate = accmulate;
	}
	public Integer getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(Integer memberCount) {
		this.memberCount = memberCount;
	}
	public Integer getMemberDelNy() {
		return memberDelNy;
	}
	public void setMemberDelNy(Integer memberDelNy) {
		this.memberDelNy = memberDelNy;
	}
	public Integer getMemberUseNy() {
		return memberUseNy;
	}
	public void setMemberUseNy(Integer memberUseNy) {
		this.memberUseNy = memberUseNy;
	}
	public Timestamp getRegistration() {
		return registration;
	}
	public void setRegistration(Timestamp registration) {
		this.registration = registration;
	}
	
	public Timestamp getCorrectation() {
		return correctation;
	}
	public void setCorrectation(Timestamp correctation) {
		this.correctation = correctation;
	}
	public boolean isAutoLogin() {
		return autoLogin;
	}
	public void setAutoLogin(boolean autoLogin) {
		this.autoLogin = autoLogin;
	}
	
	//favorite table
	
	public String getBookSign() {
		return bookSign;
	}
	public String getBookSeq() {
		return bookSeq;
	}
	public void setBookSeq(String bookSeq) {
		this.bookSeq = bookSeq;
	}
	public void setBookSign(String bookSign) {
		this.bookSign = bookSign;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public Integer getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(Integer bookPrice) {
		this.bookPrice = bookPrice;
	}
	public Integer getBookCost() {
		return bookCost;
	}
	public void setBookCost(Integer bookCost) {
		this.bookCost = bookCost;
	}
	//httpSession
	public String getSessSeq() {
		return sessSeq;
	}
	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}
	//order join
	public String getPurchaseSeq() {
		return purchaseSeq;
	}
	public void setPurchaseSeq(String purchaseSeq) {
		this.purchaseSeq = purchaseSeq;
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
