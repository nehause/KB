<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelNy" value="<c:out value="${vo.searchDelNy}"/>"/>
<input type="hidden" name="shDor" value="<c:out value="${vo.searchDor}"/>"/>

<%-- <input type="hidden" name="searchDos" value="<c:out value="${vo.searchDos}"/>"/>
<input type="hidden" name="searchDoe" value="<c:out value="${vo.searchDoe}"/>"/> --%>

<input type="hidden" name="shOption" value="<c:out value="${vo.searchOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.searchValue}"/>"/>

<input type="hidden" name="CGSeq" value="<c:out value="${vo.CGSeq}"/>"/>