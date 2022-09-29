<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="searchDelNy" value="<c:out value="${vo.searchDelNy}"/>"/>
<input type="hidden" name="searchUseNy" value="<c:out value="${vo.searchUseNy}"/>"/>
<input type="hidden" name="searchDor" value="<c:out value="${vo.searchDor}"/>"/>

<%-- <input type="hidden" name="searchDos" value="<c:out value="${vo.searchDos}"/>"/>
<input type="hidden" name="searchDoe" value="<c:out value="${vo.searchDoe}"/>"/> --%>
<input type="hidden" name="searchOption" value="<c:out value="${vo.searchOption}"/>"/>
<input type="hidden" name="searchValue" value="<c:out value="${vo.searchValue}"/>"/>

<input type="hidden" name="writerSeq" value="<c:out value="${vo.writerSeq}"/>"/>