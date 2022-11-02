<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html lang="ko">
<head>
<% pageContext.setAttribute("br", "\n"); %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
publicCCTVWeatherList

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${item }"/>
<br>aaa : <c:out value="${fn:length(item) }"/>

<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.baseDate }"/>
	<br><c:out value="${item.baseTime }"/>	
	<br><c:out value="${item.weatherNm }"/>	
	<br><c:out value="${item.cctvId }"/>	
	<br><c:out value="${item.cctvNm }"/>	
</c:forEach>

</body>
</html>