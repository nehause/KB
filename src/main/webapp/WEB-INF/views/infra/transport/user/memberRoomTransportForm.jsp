<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.kbbook.shop.modules.code.CodeServiceImpl"/>

<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/resources/images/fav_jhj.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>JHJ Shop</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="/resources/template/karma/css/linearicons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/bootstrap.css">
	<link rel="stylesheet" href="/resources/template/karma/css/owl.carousel.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nice-select.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nouislider.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/template/karma/css/main.css">
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<style>
		.textCenter{
			text-align: center;
		}
		.allCenter{
			text-align: center;
			justify-content: center; 
			align-items: center;
		}
		.marginSpace{
			margin-top: 10px;
		    margin-bottom: 10px;
		}
		.form-select{
			display: block;
		}
		.nice-select{
			display: none;
		}
	</style>
</head>

<body>

	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->
	

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>마이룸</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="memberRoomForm.html">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">회원정보수정</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	
	<!--================Blog Area =================-->
    <section class="blog_area">
        <div class="container">
            <div class="row">
            	<!-- myRoomSidebar Start -->
     			<%@include file="../../../common/user/include/myRoomSidebar.jsp"%>
     			<!-- myRoomSidebar End -->

                <div class="col-lg-9">
                	<form id="UTVForm" name="UTVForm" method="post">
                		<input type="hidden" id="transportSeq" name="transportSeq">
                		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
						<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
	                	<div style="height: 20px;"></div>
						<table class="col-lg-12	border-top border-bottom">
							<tr>
								<td class="col-lg-3">
									<div class="user_name"><b><c:out value="${sessName }"/></b> 회원님</div>
								</td>
								<td>
									<span>통합 포인트</span><br>
									<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
								</td>
							</tr>
						</table>
	                	<div style="height: 20px;"></div>
	                    <h3><b>나의 주소록</b></h3>
	                    <div class="border row" style="background-color: #F0F0F0;">
	                    	<div class="col-lg-2" style="margin:10px;">
	                    		<span>입력된 주소 </span><span><b><c:out value="${vo.totalRows}"/>개</b></span>
	                    	</div>
	                    	<div class="col-lg-3 offset-6">
	                    		<button type="button" class="genric-btn default" id="regModalBtn" name="regModalBtn"> 
                   					<i class="fa-solid fa-caret-right"></i> 새로운 주소 추가
                				</button>
                			</div>
	                    </div>
						<div style="height: 10px;"></div>
	                    <table class="table col-lg-12" style="text-align:center; vertical-align:middle;">
	                    	<tr class="row">
	                    		<th class="col-lg-1">
	                    			<span>구분</span>
	                    		</th>
	                    		<th class="col-lg-3">
	                    			<span>전화번호</span><br><span>[휴대전화번호]</span>
	                    		</th>
	                    		<th class="col-lg-2">
	                    			<span>우편번호</span>
	                    		</th>
	                    		<th class="col-lg-5">
	                    			<span>주소</span>
	                    		</th>
	                    		<th class="col-lg-1">
	                    			<span>선택</span>
	                    		</th>
	                    	</tr>
                    		<c:set var="listCodeTransportDiv" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
								<c:choose>
									<c:when test="${fn:length(userTransport) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
										<td class="text-center" colspan="5">저장된 주소지가 없습니다.</td>
									</c:when>
									<c:otherwise>
										<c:forEach items="${userTransport}" var="userTransport" varStatus="status">
											<tr class="row">
					                    		<td class="col-lg-1">
				                    				<span>
				                    					<c:forEach items="${listCodeTransportDiv}" var="listTransportDiv" varStatus="statusTransportDiv">
															<c:if test="${userTransport.transportDiv eq listTransportDiv.COrder}"><c:out value="${listTransportDiv.CNameKor }"/></c:if>
														</c:forEach>
													</span>
					                    		</td>
					                    		<td class="col-lg-3">
					                    			<span><c:out value="${userTransport.phone }"/></span>
					                    		</td>
					                    		<td class="col-lg-2">
					                    			<span><c:out value="${userTransport.zip }"/></span>
					                    		</td>
					                    		
					                    		<td class="col-lg-5">
					                    			<span><c:out value="${userTransport.address1 }"/></span>
					                    		</td>
					                    		<td class="col-lg-1">
					                    			<input type="radio" id="seqRadio_<c:out value="${userTransport.transportSeq }"/>" name="seqRadio" value="<c:out value="${userTransport.transportSeq }"/>">
					                    		</td>
					                    	</tr>
				                    	</c:forEach>
				                    </c:otherwise>
								</c:choose>
	                    	<tr>
	                    		
	                    	</tr>
	                    	<tr>
	                    		
	                    	</tr>
	                    	<tr class="row" style="background-color: #F0F0F0;">
                           		<td class="col-lg-12">
	                           		<!-- pagination s -->
									<%@include file="../../../common/dmin/include/userPagination.jsp"%>
									<!-- pagination e -->
                           		</td>
                            </tr>
                            <tr class="row">
                            	<td class="col-lg-12">
                            	</td>
                            </tr>
	                    </table>
                   		<button type="button" class="genric-btn primary col-lg-2" style="float:right;"  id="modModalBtn" name="modModalBtn"> 
                   			<i class="fa-solid fa-pencil"></i> 수정
                		</button>
                		<button type="button" class="genric-btn danger col-lg-2" style="float:right; margin-right:10px;" data-toggle="modal" data-target="#delectTransportModal" id="delectModalBtn"> 
                   			<i class="fa-solid fa-trash-can"></i> 삭제
                		</button>
                    </form>
                    <div style="height: 80px;"></div>
                   	<div class="border">
                   		<div style="background-color: #F0F0F0;">
                   			<h4 style="padding: 10px;"><b><i class="fa-solid fa-circle-exclamation"></i></b> 주소록 안내 </h4>
                   		</div>
                   		<div>
                   			<ul style="margin: 10px; padding:10px;">
                   				<li>기본 주소는 집 또는 직장 주소 중에서만 설정 가능하며, 기타로 구분되어 있는 주소는 설정 하실 수 없습니다.</li>
								<li>기본 주소는 수정 가능하며, 삭제 할 수 없습니다.</li>
								<li>기본 주소로 설정 하시면 회원정보 수정의 주소도 같이 변경되며, 주문/결제시 배송지정보에서 회원정보 동일에 적용됩니다.</li>
								<li>등록된 주소의 구분(집, 직장, 기타) 수정은 불가합니다.</li>
								<li>집과 직장 주소는 각 1개씩만 등록 가능하며, 기타주소는 최대 99개까지 등록할수 있습니다.</li>
								<li>집과 직장 주소가 이미 1개씩 등록된 경우, 추가 하실 수 없으며 해당 주소를 선택하시어 수정 바랍니다.</li>
                   			</ul>
                   		</div>
                    </div>
                    <div style="height: 50px;"></div>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	<!-- start new Transport modal area -->
	<form id="UTForm" name="UTForm" method="post">
		<div class="modal fade" id="transportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="regTransportModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="regTransportModalLabel">새로운 주소 입력</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>구분</b>
		        		</div>
		        		<div class="col-lg-6">
		        			<input type="hidden" id="transportSeq" name="transportSeq">
		        			<select class="form-control col-lg-6" id="transportDiv" name="transportDiv">
                                <option value="1">집</option>
                                <option value="2">그 외</option>
                            </select>
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<input type="hidden" id="member_memberSeq" name="member_memberSeq">
		        		<div class="col-lg-3 textCenter">
		        			<b>이름</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4 mb-2" id="name" name="name" value="">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>주소</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="zip" name="zip" readonly>
			        		<input type="button" class="form-control mb-2 genric-btn primary col-lg-4" id="regTransportSearch" name="regTransportAddressSearch" value="주소검색" onclick="PostCode()">
		        			<input type="text" class="form-control mb-2" id="address1" name="address1" readonly>
		        			<input type="text" class="form-control mb-2" id="address2" name="address2">
		        			<input type="hidden" id="extraaddress" name="extraaddress">
		        			<input type="hidden" id="lng" name="lng">
		        			<input type="hidden" id="lat" name="lat">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>핸드폰</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control" id="phone" name="phone">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>전화번호</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control" id="home" name="home">
		        		</div>
		        	</div>
	        	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
		        <button type="button" class="genric-btn primary" id="regModBtn" name="regModBtn">등록</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
	<!-- end new Transport modal area -->
	
	<!-- start new Transport modal area -->
	<!-- <form name="modTransportForm" method="get" action="memberTransport.html" id="modTransportForm">
		<div class="modal fade" id="modTransportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="modTransportModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="modTransportModalLabel">주소 수정</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>구분</b>
		        		</div>
		        		<div class="col-lg-6">
		        			<select class="country_select col-lg-6" style="display: inline; padding-right:60px;" id="regTransportHomeStart" name="regTransportHomeStart">
                                <option value="1">집</option>
                                <option value="2">그 외</option>
                            </select>
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>이름</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" id="modTransportName" name="modTransportName">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>주소</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="zip" name="zip">
			        		<input type="button" class="form-control genric-btn primary col-lg-4" id="transportSearch" name="transportSearch" value="주소검색">
		        			<input type="text" class="form-control" id="address1" name="address1">
		        			<input type="text" class="form-control" id="address2" name="address2">
		        			<input type="hidden" id="extraaddress" name="extraaddress">
		        			<input type="hidden" id="lng" name="lng">
		        			<input type="hidden" id="lat" name="lat">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>전화번호</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" style="display: inline;" id="modTransportHomeStart" name="modTransportHomeStart">
                                <option value=" 02">02</option>
                                <option value="031">031</option>
                                <option value="032">032</option>
                                <option value="033">033</option>
                            </select>
                            <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportHomeCenter" name="modTransportHomeCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportHomeEnd" name="modTransportHomeEnd">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>핸드폰</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<select class="country_select col-lg-3" id="modTransportNumberStart" name="modTransportNumberStart">
                                 <option value="010">010</option>
                                 <option value="011">011</option>
                                 <option value="017">017</option>
                                 <option value="019">019</option>
                             </select>
                             <span class="col-lg-1"> - </span>
                            <input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportNumberCenter" name="modTransportNumberCenter">
                            <span class="col-lg-1"> - </span>
			        		<input type="text" class="form-control col-lg-3" style="display: inline;" id="modTransportNumberEnd" name="modTransportNumberEnd">
		        		</div>
		        	</div>
	        	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
		        <button type="button" class="genric-btn primary" onclick="modTransportSubmit();">등록</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form> -->
	<!-- end new Transport modal area -->
	
	<!-- start modal area -->
	<div class="modal fade" id="delectTransportModal" tabindex="-1" aria-labelledby="delectTransportModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="delectTransportModalLabel">삭제하시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>선택된 주소 정보가 삭제됩니다. 삭제하시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" id="delBtn" name="delBtn">삭제</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<script>
	    function PostCode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	                var geocoder = new daum.maps.services.Geocoder(); // 주소-좌표 변환 객체
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("extraaddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraaddress").value = '';
	                }
	                
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {

	                        var result = results[0]; //첫번째 결과의 값을 활용

	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	    	                document.getElementById("lng").value = coords.getLat(); // 위도 
	    	                document.getElementById("lat").value = coords.getLng(); // 경도
	    	                
//	    	                //위의 것과 같다
//	    	                document.getElementById("lng").value = result[0].y; // 위도
//	    	                document.getElementById("lat").value = result[0].x; // 경도
	    	                
	                    }
	                });
	               
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('zip').value = data.zonecode; // 우편번호
	                document.getElementById("address1").value = addr; // 주소
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("address2").focus();

	            }
	        }).open();
	    }
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlInsert = "/transport/userTransportInst";				/* #-> */
	var goUrlUpdate = "/transport/userTransportUpdate";				/* #-> */
	var goUrlUelete = "/transport/userTransportUelete";				/* #-> */
	var goUrlDelete = "/transport/userTransportDelete";				/* #-> */
	var goUrlList = "/transport/transportForm";
	
	var form = $("form[name=UTForm]"); 
	var listForm = $("form[name=UTVForm]");
	var seq = $("input:hidden[name=transportSeq]");
	
	$("input:radio[name=seqRadio]").on("change",function(){
		seq.val($("input:radio[name=seqRadio]:checked").val());
	});
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
	}
	
	
	$("#regModalBtn").on("click", function(){
		$('#transportModal').modal('show');
	    $('.modal-title').text('새로운 주소 등록');
	    $('#transportSeq').val('');
	    $('#member_memberSeq').val(${sessSeq });
	    $('#name').val("${sessName }");
	    $('#transportDiv').val(1)
	    $('#phone').val('');
	    $('#home').val('');
	    $('#zip').val('');
	    $('#address1').val('');
	    $('#address2').val('');
	    $('#extraaddress').val('');
	    $('#lng').val('');
	    $('#lat').val('');
	    if($('#transportDiv').css("display") == "none"){
			$('#transportDiv').attr('style', "display:block");
		}
	});
		
	$("#modModalBtn").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/transport/TransportModal"
			/* ,data : $("#formLogin").serialize() */
			,data : { "transportSeq" : $("#transportSeq").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
					// response.result.colum을 하면 가져온 값의 col값을 쓸수있다.
				if(response.rt == "success") {
					    $('#transportModal').modal('show');
					    $('.modal-title').text('등록된 주소 수정');
					    $('#transportSeq').val(response.transportSeq);
					    $('#member_memberSeq').val(response.member_memberSeq);
					    $('#name').val(response.name);
					    $('#transportDiv').val(response.result.transportDiv);
					    $('#phone').val(response.phone);
					    $('#home').val(response.home);
					    $('#zip').val(response.zip);
					    $('#address1').val(response.address1);
					    $('#address2').val(response.address2);
					    $('#lng').val(response.lng);
					    $('#lat').val(response.lat);
					    if($('#transportDiv').css("display") == "none"){
							$('#transportDiv').attr('style', "display:block");
						}

				} else {
					alert("주소를 선택해주십시요");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	$("#delBtn").on("click", function(){
		listForm.attr("action", goUrlDelete).submit();
	}); 
	
	$("#regModBtn").on("click", function(){
		if($('#transportSeq').val() == '' || $('#transportSeq').val() == null){
			form.attr("action", goUrlInsert).submit();	
		} else{
			form.attr("action", goUrlUpdate).submit();	
		}
	});

	</script>
	<script src="/resources/template/karma/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/template/karma/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/template/karma/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/template/karma/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/karma/js/jquery.sticky.js"></script>
	<script src="/resources/template/karma/js/nouislider.min.js"></script>
	<!-- <script src="/resources/template/karma/js/countdown.js"></script> -->
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
</body>

</html>