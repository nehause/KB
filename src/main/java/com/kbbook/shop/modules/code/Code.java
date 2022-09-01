package com.kbbook.shop.modules.code;

import java.sql.Date;

public class Code {
	private String CSeq;
	private String CCG_CGSeq;
	private String CNameKor;
	private String CNameEng;
	private Integer CUseNy;
	private Integer CDelNy;
	private Integer COrder;
	private Date CRegistration;
	private Date CCorrection;
	private String CGName;
	/////////////////////////////////////////////////////////
	public String getCSeq() {
		return CSeq;
	}
	public void setCSeq(String cSeq) {
		CSeq = cSeq;
	}
	public String getCCG_CGSeq() {
		return CCG_CGSeq;
	}
	public void setCCG_CGSeq(String cCG_CGSeq) {
		CCG_CGSeq = cCG_CGSeq;
	}
	public String getCNameKor() {
		return CNameKor;
	}
	public void setCNameKor(String cNameKor) {
		CNameKor = cNameKor;
	}
	public String getCNameEng() {
		return CNameEng;
	}
	public void setCNameEng(String cNameEng) {
		CNameEng = cNameEng;
	}
	public Integer getCUseNy() {
		return CUseNy;
	}
	public void setCUseNy(Integer cUseNy) {
		CUseNy = cUseNy;
	}
	public Integer getCDelNy() {
		return CDelNy;
	}
	public void setCDelNy(Integer cDelNy) {
		CDelNy = cDelNy;
	}
	public Integer getCOrder() {
		return COrder;
	}
	public void setCOrder(Integer cOrder) {
		COrder = cOrder;
	}
	public Date getCRegistration() {
		return CRegistration;
	}
	public void setCRegistration(Date cRegistration) {
		CRegistration = cRegistration;
	}
	public Date getCCorrection() {
		return CCorrection;
	}
	public void setCCorrection(Date cCorrection) {
		CCorrection = cCorrection;
	}
	public String getCGName() {
		return CGName;
	}
	public void setCGName(String cGName) {
		CGName = cGName;
	}
	
	
	
}
