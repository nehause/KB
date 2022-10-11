package com.kbbook.shop.modules.member;

import com.kbbook.shop.common.base.BaseVo;

public class MemberVo extends BaseVo {
	
	private String memberSeq;
	
	//httpsession
	
	private String sessSeq;

	public String getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}

	public String getSessSeq() {
		return sessSeq;
	}

	public void setSessSeq(String sessSeq) {
		this.sessSeq = sessSeq;
	}

	
	
	
	
}
