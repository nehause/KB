package com.kbbook.shop.common.base;

import com.kbbook.shop.common.constants.Constants;

public class BaseVo {
//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = Constants.ROW_NUM_TO_SHOW;		// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = Constants.PAGE_NUM_TO_SHOW;		// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;

	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	private String mainKey;
	
// search
	
	private String searchValue;
	private Integer searchOption;
	private Integer searchDelNy;
	private Integer searchUseNy;
	private Integer searchDor;
//	private Date searchDos;
//	private Date searchDoe;
	//search member
	private Integer searchPrivacy;
	private Integer searchGender;
	//search transport
	private Integer searchDiv;
	//search order
	private Integer searchPayment;
	private Integer searchPurchaseStatus;
	
	
	public void setParamsPaging(int totalRows) {
			
	//		setThisPage(3);
	
			setTotalRows(totalRows);
	
			if (getTotalRows() == 0) {
				setTotalPages(1);
			} else {
				setTotalPages(getTotalRows() / getRowNumToShow());
			}
	
			if (getTotalRows() % getRowNumToShow() > 0) {
				setTotalPages(getTotalPages() + 1);
			}
	
			if (getTotalPages() < getThisPage()) {
				setThisPage(getTotalPages());
			}
			
			setStartPage(((getThisPage() - 1) / getPageNumToShow()) * getPageNumToShow() + 1);
	
			setEndPage(getStartPage() + getPageNumToShow() - 1);
	
			if (getEndPage() > getTotalPages()) {
				setEndPage(getTotalPages());
			}
			
			setEndRnumForOracle((getRowNumToShow() * getThisPage()));
			setStartRnumForOracle((getEndRnumForOracle() - getRowNumToShow()) + 1);
			if (getStartRnumForOracle() < 1) setStartRnumForOracle(1);
			
			if (thisPage == 1) {
				setStartRnumForMysql(0);
			} else {
				setStartRnumForMysql((getRowNumToShow() * (getThisPage()-1)));
			}
			
			System.out.println("getThisPage():" + getThisPage());
			System.out.println("getTotalRows():" + getTotalRows());
			System.out.println("getRowNumToShow():" + getRowNumToShow());
			System.out.println("getTotalPages():" + getTotalPages());
			System.out.println("getStartPage():" + getStartPage());
			System.out.println("getEndPage():" + getEndPage());		
			System.out.println("getStartRnumForOracle():" + getStartRnumForOracle());
			System.out.println("getEndRnumForOracle():" + getEndRnumForOracle());
			System.out.println("getStartRnumForMysql(): " + getStartRnumForMysql());
			
		}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	
	public String getMainKey() {
		return mainKey;
	}

	public void setMainKey(String mainKey) {
		this.mainKey = mainKey;
	}
	
	//search

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
	
	public Integer getSearchUseNy() {
		return searchUseNy;
	}

	public void setSearchUseNy(Integer searchUseNy) {
		this.searchUseNy = searchUseNy;
	}

	public Integer getSearchDor() {
		return searchDor;
	}
	public void setSearchDor(Integer searchDor) {
		this.searchDor = searchDor;
	}
//	public Date getSearchDos() {
//		return searchDos;
//	}
//	public void setSearchDos(Date searchDos) {
//		this.searchDos = searchDos;
//	}
//	public Date getSearchDoe() {
//		return searchDoe;
//	}
//	public void setSearchDoe(Date searchDoe) {
//		this.searchDoe = searchDoe;
//	}

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

	public Integer getSearchDiv() {
		return searchDiv;
	}

	public void setSearchDiv(Integer searchDiv) {
		this.searchDiv = searchDiv;
	}

	public Integer getSearchPayment() {
		return searchPayment;
	}

	public void setSearchPayment(Integer searchPayment) {
		this.searchPayment = searchPayment;
	}

	public Integer getSearchPurchaseStatus() {
		return searchPurchaseStatus;
	}

	public void setSearchPurchaseStatus(Integer searchPurchaseStatus) {
		this.searchPurchaseStatus = searchPurchaseStatus;
	}
	
	
}
