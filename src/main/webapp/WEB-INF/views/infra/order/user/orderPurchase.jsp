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
		#paymentDiv {
			position: absolute;
			padding: 0px;
			margin: 0pt;
			right: 0px;
			top: 250px;
		}
		.nice-select{
			display: none;
		}
		.form-select{
			display: block;
		}
		
		/*  .txt_line {
		      width:150px;
		      overflow:hidden;
		      text-overflow:ellipsis;
		      white-space:nowrap;
		  } */
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
                    <h1>주문/결제</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">메인<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/resources/book/bookView.html">주문/결제</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Checkout Area =================-->
    <section class="checkout_area section_gap">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h3>배송 정보</h3>
                        <form id="UTVForm" name="UTVForm" method="post">
	                		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
							<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		                    <div class="border row" style="background-color: #F0F0F0;">
		                    	<div class="col-lg-3" style="margin:10px;">
		                    		<span>입력된 주소 </span><span><b><c:out value="${vo.totalRows}"/>개</b></span>
		                    	</div>
		                    	<!-- <div class="col-lg-3 offset-5">
		                    		<button type="button" class="genric-btn default" id="regModalBtn" name="regModalBtn"> 
	                   					<i class="fa-solid fa-caret-right"></i> 새로운 주소 추가
	                				</button>
	                			</div> -->
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
										<c:when test="${fn:length(transport) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
											<td class="text-center" colspan="5">저장된 주소지가 없습니다. <b>나의 주소록</b>에서 추가해주세요</td>
										</c:when>
										<c:otherwise>
											<c:forEach items="${transport}" var="transport" varStatus="status">
												<tr class="row" id="transport_<c:out value="${transport.transportSeq }"/>" name="transport_<c:out value="${transport.transportSeq }"/>">
						                    		<td class="col-lg-1">
					                    				<span>
					                    					<c:forEach items="${listCodeTransportDiv}" var="listTransportDiv" varStatus="statusTransportDiv">
																<c:if test="${transport.transportDiv eq listTransportDiv.COrder}"><c:out value="${listTransportDiv.CNameKor }"/></c:if>
															</c:forEach>
														</span>
						                    		</td>
						                    		<td class="col-lg-3">
						                    			<span><c:out value="${transport.phone }"/></span>
						                    		</td>
						                    		<td class="col-lg-2">
						                    			<span><c:out value="${transport.zip }"/></span>
						                    		</td>
						                    		
						                    		<td class="col-lg-5">
						                    			<span><c:out value="${transport.address1 }"/></span>
						                    		</td>
						                    		<td class="col-lg-1">
						                    			<input type="radio" id="seqRadio_<c:out value="${transport.transportSeq }"/>" name="seqRadio" value="<c:out value="${transport.transportSeq }"/>">
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
	                   		<!-- <button type="button" class="genric-btn primary col-lg-2" style="float:right;"  id="modModalBtn" name="modModalBtn"> 
	                   			<i class="fa-solid fa-pencil"></i> 수정
	                		</button> -->
	                    </form>
	                    <div style="height: 50px;"></div>
                       <!--  <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="orderName" name="orderName" placeholder="이름*">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" data-toggle="modal" data-target="#orderTransportChangeModal" id="orderTransportChange" name="orderTransportChange" value="배송지 변경">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderNumber" name="orderNumber" placeholder="휴대폰 전화번호 (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderHome" name="orderHome" placeholder="집 전화번호 (ex:021234567)*" maxlength="9" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-5 form-group">
                                <input type="text" class="form-control" id="orderZip" name="orderZip" placeholder="우편 번호">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" id="orderPostSearch" name="orderPostSearch" value="주소 검색">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddress" name="orderAddress" placeholder="주소">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddressDetail" name="orderAddressDetail" placeholder="상세 주소">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <input type="checkbox" id="orderSaveShipping" name="orderSaveShipping">
                                    <label for="orderSaveShipping">배송지를 저장하시겠습니까?</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="height: 30px;"></div>
                        </form> -->
                        <div class="cart_inner">
			                <div class="table-responsive">
			                	<h1>주문 상품</h1>
			                    <table class="table" style="text-align: center;">
			                        <thead>
			                            <tr>
			                                <th scope="col">상품 정보</th>
			                                <th scope="col">가격</th>
			                                <th scope="col">개수</th>
			                                <th scope="col">총합</th>
			                            </tr>
			                        </thead>
			                        <tbody>
			                            <tr>
			                                <td>
			                                    <div class="media">
			                                        <div class="d-flex">
			                                            <img src="<c:out value="${book.path }"/><c:out value="${book.uuidName }"/>" alt="" style="width: 150px;">
			                                        </div>
			                                        <div class="media-body">
			                                            <p style="width: 175px;"><c:out value="${book.name }"/></p>
			                                        </div>
			                                    </div>
			                                </td>
			                                <td>
			                                    <h5>₩<fmt:formatNumber type="number" pattern="###,###,###" value="${book.price }" /></h5>
			                                </td>
			                                <td>
			                                    <div class="product_count">
													<label for="amount">수량:</label>
													<input type="text" name="amount" id="amount" maxlength="<c:out value="${book.stock }"/>" value="1" title="Quantity:" class="input-text qty" readonly>
													<button onclick="amountUp();"
													 class="increase items-count" type="button" style="padding-top: 3px;"><i class="lnr lnr-chevron-up"></i></button>
													<button onclick="amountDown();"
													 class="reduced items-count" type="button" style="padding-bottom: 8px;"><i class="lnr lnr-chevron-down"></i></button>
												</div>
			                                </td>
			                                <td>
			                                    <h5>₩<span id="tablePrice"><c:out value="${book.price }"/></span></h5>
			                                    <input type="hidden" id="bookPrice" name="bookPrice" value="<c:out value="${book.price }"/>">
			                                </td>
			                            </tr>
			                            <tr>
			                                <td>
			
			                                </td>
			                                <td>
			
			                                </td>
			                                <td>
			                                    <h5>합계</h5>
			                                </td>
			                                <td>
			                                    <h5>₩<span id="tableTotalCost"><c:out value="${book.price }"/></span></h5>
			                                </td>
			                            </tr>
			                        </tbody>
			                    </table>
			                </div>
			            </div>
		            </div>
                 	<div class="col-lg-4">
                        <div class="order_box">
                            <h2>주문 내역</h2>
                            <ul class="list">
                                <li><a>상품 <span>총합</span></a></li>
                                <li><a> <p class="txt_line"><c:out value="${book.name }"/></p> <%-- <span id="amountCount" class="middle"></span> <span class="last">₩<span id="amountPrice"><c:out value="${book.price }"/></span></span> --%></a></li>
                            </ul>
                            <ul class="list list_2">
                                <li><a>상품 금액 <span>₩<span id="bookPrice"><c:out value="${book.price }"/></span></span></a></li>
                                <li><a>배송비 <span>무료</span></a></li>
                                <li><a>결제 예정 금액 <span>₩<span id="purchasePrice"><c:out value="${book.price }"/></span></span></a></li>
                            </ul>
                            <div class="payment_item">
                                <div class="">
                                    <input type="radio" id="payment1" name="paymentRadio" value="1">
                                    <label for="payment1">카드 결제수단</label>
                                    <div class="check"></div>
                                </div>
                                <p>상점 이름, 상점 거리, 상점 타운, 상점 주/군, 상점 우편번호로 수표를 보내주십시오.</p>
                            </div>
                            <div class="payment_item active">
                                <div class="">
                                    <input type="radio" id="payment2" name="paymentRadio" value="2">
                                    <label for="payment2">Paypal </label>
                                    <img src="/resources/template/karma/img/product/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p>페이팔을 통한 결제 PayPal이 없는 경우 신용 카드로 결제할 수 있습니다.</p>
                            </div>
                            <div class="creat_account">
                                <input type="checkbox" id="purchaseCheck" name="purchaseCheck" value="1">
                                <label for="purchaseCheck">나는 주문 상태를 숙지하였으며 </label>
                                <a>이에 동의함*</a>
                            </div>
                            <a class="primary-btn" id="purchaseBtn" name="purchaseBtn" >결제하기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->
	
	<form id="OIForm" name="OIForm" method="post">
		<input type="hidden" id="member_memberSeq" name="member_memberSeq" value="${sessSeq }">
		<input type="hidden" id="transport_transportSeq" name="transport_transportSeq">
		<input type="hidden" id="payment" name="payment">
		<input type="hidden" id="bookSeq" name="bookSeq" value="<c:out value="${book.bookSeq }"/>">
		<input type="hidden" id="count" name="count" value="1">
		<input type="hidden" id="price" name="price" value="<c:out value="${book.price }"/>">
	
	</form>
	
	
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
		        			<select class="form-control col-lg-6" id="transportDiv" name="transportDiv">
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
	var goUrlInsert = "/order/transportInsert";				/* #-> */
	var goUrlUpdate = "/order/transportUpdate";				/* #-> */
	var goUrlList = "/order/orderPurchase";
	var goUrlUserInsert = "/order/userOrderInsert";
	var tForm = $("form[name=UTForm]"); 
	var listForm = $("form[name=UTVForm]");
	var orderForm = $("form[name=OIForm]");
	var tSeq = $("input:hidden[name=transport_transportSeq]");
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			tForm.attr("action", goUrlList).submit();
	}
	
	$("input:radio[name=seqRadio]").on("change",function(){
		tSeq.val($("input:radio[name=seqRadio]:checked").val());
		
	});
	
	$("input:radio[name=paymentRadio]").on("change",function(){
		$("#payment").val($("input:radio[name=paymentRadio]:checked").val());
		
	});
	
	
	function amountUp(){
		var stock = ${book.stock};
		var result = document.getElementById('amount');
		var sst = result.value; if( !isNaN( sst ) && stock > sst ) result.value++;
		if(sst == stock){
			alert("책의 구매량은 재고량을 초과할수 없습니다.");
		}
		var totalPrice = 0;
		totalPrice = $('#amount').val() * $('#bookPrice').val();
		$('#count').val($('#amount').val());
		$('#price').val(totalPrice);
		$("#tablePrice").html(totalPrice);
		$("#tableTotalCost").html(totalPrice);
		$("#amountPrice").html(totalPrice);
		$("#bookPrice").html(totalPrice);
		$("#purchasePrice").html(totalPrice);
	}
	
	function amountDown(){
		var result = document.getElementById('amount');
		var sst = result.value;
		if( !isNaN( sst ) && sst > 1 ) result.value--;
		var totalPrice = 0;
		totalPrice = $('#amount').val() * $('#bookPrice').val();
		$('#count').val($('#amount').val());
		$('#price').val(totalPrice);
		$("#tablePrice").html(totalPrice);
		$("#tableTotalCost").html(totalPrice);
		$("#amountPrice").html(totalPrice);
		$("#bookPrice").html(totalPrice);
		$("#purchasePrice").html(totalPrice);
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
	
	/* $("#regModBtn").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/order/transportRegMod"
			,data : { "transportSeq" : $("#transportSeq").val() }
			,success: function(response) {
				
				
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	}); */
		
	$("#modModalBtn").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/transport/TransportModal"
			/* ,data : $("#formLogin").serialize() */
			,data : { "transportSeq" : $("#transportSeq").val() }
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
	
	$("#regModBtn").on("click", function(){
		if($('#transportSeq').val() == '' || $('#transportSeq').val() == null){
			tForm.attr("action", goUrlInsert).submit();	
		} else{
			tForm.attr("action", goUrlUpdate).submit();	
		}
	});
	
	$('#purchaseBtn').on("click", function(){
		if($('#transport_transportSeq').val() == '' || $('#transport_transportSeq').val() == null){
				alert("배송지를 선택해주세요.");
		} else{
			if($('#payment').val() == '' || $('#payment').val() == null){
				alert("결제 수단을 선택해주세요.");
			} else{
				if($('#purchaseCheck').is(':checked') == false){
					alert("주문상태 숙지 체크박스를 체크해주세요.");
				} else {
					orderForm.attr("action", goUrlUserInsert).submit();	
				}
			}
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
	<script src="/resources/template/karma/js/countdown.js"></script>
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
</body>

</html>