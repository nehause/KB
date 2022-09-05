package com.kbbook.shop.modules.member;

public class MemberVo {
	private String searchValue;
	private Integer searchOption;
	private Integer searchDelNy;
	private Integer searchPrivacy;
	private Integer searchGender;
	
	public String getSearchValue() {
		return searchValue;
	}
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
	public Integer getSearchOption() {
		return searchOption;
	}
	public void setSearchOption(Integer searchOption) {
		this.searchOption = searchOption;
	}
	public Integer getSearchDelNy() {
		return searchDelNy;
	}
	public void setSearchDelNy(Integer searchDelNy) {
		this.searchDelNy = searchDelNy;
	}
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
	
}
