package com.kbbook.shop.modules.codeGroup;

import java.sql.Date;

public class CodeGroup {
	//KB_code_group
		private String CGseq;
		private String CGName;
		private Integer CGUseNy;
		private Integer CGorder;
		private Integer CGDelNy;
		private Date CGRegistration;
		private Date CGCorrectation;
//---------------------------
		public String getCGseq() {
			return CGseq;
		}
		public void setCGseq(String cGseq) {
			CGseq = cGseq;
		}
		public String getCGName() {
			return CGName;
		}
		public void setCGName(String cGName) {
			CGName = cGName;
		}
		public Integer getCGUseNy() {
			return CGUseNy;
		}
		public void setCGUseNy(Integer cGUseNy) {
			CGUseNy = cGUseNy;
		}
		public Integer getCGorder() {
			return CGorder;
		}
		public void setCGorder(Integer cGorder) {
			CGorder = cGorder;
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
