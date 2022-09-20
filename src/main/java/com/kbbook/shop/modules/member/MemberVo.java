package com.kbbook.shop.modules.member;

import com.kbbook.shop.common.base.BaseVo;

public class MemberVo  extends BaseVo{
	
	private Integer searchPrivacy;
	private Integer searchGender;
	
	private String memberSeq;
	
	public Integer getSearchPrivacy() {
		return searchPrivacy;
	}
	public void setSearchPrivacy(Integer searchPrivacy) {
		this.searchPrivacy = searchPrivacy;
	}
	public Integer getSearchGender() {
		return searchGender;
	}
	public void setSearchGender(Integer searchGender) {
		this.searchGender = searchGender;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
	
	
}
