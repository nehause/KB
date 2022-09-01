package com.kbbook.shop.modules.codeGroup;

import java.sql.Date;

public class CodeGroup {
	//KB_code_group
		private String CGSeq;
		private String CGNameKor;
		private String CGNameEng;
		private Integer CGUseNy;
		private Integer CGOrder;
		private Integer CGDelNy;
		private Date CGRegistration;
		private Date CGCorrectation;
//---------------------------
		public String getCGSeq() {
			return CGSeq;
		}
		public void setCGSeq(String cGSeq) {
			CGSeq = cGSeq;
		}
		public String getCGNameKor() {
			return CGNameKor;
		}
		public void setCGNameKor(String cGNameKor) {
			CGNameKor = cGNameKor;
		}
		public String getCGNameEng() {
			return CGNameEng;
		}
		public void setCGNameEng(String cGNameEng) {
			CGNameEng = cGNameEng;
		}
		public Integer getCGUseNy() {
			return CGUseNy;
		}
		public void setCGUseNy(Integer cGUseNy) {
			CGUseNy = cGUseNy;
		}
		public Integer getCGOrder() {
			return CGOrder;
		}
		public void setCGOrder(Integer cGOrder) {
			CGOrder = cGOrder;
		}
		public Integer getCGDelNy() {
			return CGDelNy;
		}
		public void setCGDelNy(Integer cGDelNy) {
			CGDelNy = cGDelNy;
		}
		public Date getCGRegistration() {
			return CGRegistration;
		}
		public void setCGRegistration(Date cGRegistration) {
			CGRegistration = cGRegistration;
		}
		public Date getCGCorrectation() {
			return CGCorrectation;
		}
		public void setCGCorrectation(Date cGCorrectation) {
			CGCorrectation = cGCorrectation;
		}
		
		
}
