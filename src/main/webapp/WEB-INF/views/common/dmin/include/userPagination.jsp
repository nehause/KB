<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="container-fluid px-0 mt-2">
    <div class="row">
        <div class="col">
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
	              <span><a class="" href="javascript:goList(${vo.startPage - 1})"><</a></span>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
			                <span><a class="" href="javascript:goList(${i.index})"><b>${i.index}</b></a></span>
					</c:when>
					<c:otherwise>             
			                <span><a class="" href="javascript:goList(${i.index})"><b>${i.index}</b></a></span>
					</c:otherwise>
				</c:choose>
			</c:forEach>                
			<c:if test="${vo.endPage ne vo.totalPages}">                
     			    	<span><a class="" href="javascript:goList(${vo.endPage + 1})">></a></span>
			</c:if>
        </div>
    </div>
</div>