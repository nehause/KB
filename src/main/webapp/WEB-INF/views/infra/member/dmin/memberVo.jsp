<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="searchDelNy" value="<c:out value="${vo.searchDelNy}"/>"/>
<input type="hidden" name="searchDor" value="<c:out value="${vo.searchDor}"/>"/>

<%-- <input type="hidden" name="searchDos" value="<c:out value="${vo.searchDos}"/>"/>
<input type="hidden" name="searchDoe" value="<c:out value="${vo.searchDoe}"/>"/> --%>
<input type="hidden" name="searchPrivacy" value="<c:out value="${vo.searchPrivacy}"/>"/>
<input type="hidden" name="searchGender" value="<c:out value="${vo.searchGender}"/>"/>
<input type="hidden" name="searchOption" value="<c:out value="${vo.searchOption}"/>"/>
<input type="hidden" name="searchValue" value="<c:out value="${vo.searchValue}"/>"/>

<input type="hidden" name="memberSeq" value="<c:out value="${vo.memberSeq}"/>"/>