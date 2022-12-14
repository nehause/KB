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
                    <h1>??????/??????</h1>
                    <nav class="d-flex align-items-center">
                        <a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
                        <a href="/book/bookIndex">?????? ??????<span class="lnr lnr-arrow-right"></span></a>
                        <a href="#">??????/??????</a>
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
                        <h3>?????? ??????</h3>
                        <form id="UTVForm" name="UTVForm" method="post">
	                		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
							<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		                    <div class="border row" style="background-color: #F0F0F0;">
		                    	<div class="col-lg-3" style="margin:10px;">
		                    		<span>????????? ?????? </span><span><b><c:out value="${vo.totalRows}"/>???</b></span>
		                    	</div>
		                    	<!-- <div class="col-lg-3 offset-5">
		                    		<button type="button" class="genric-btn default" id="regModalBtn" name="regModalBtn"> 
	                   					<i class="fa-solid fa-caret-right"></i> ????????? ?????? ??????
	                				</button>
	                			</div> -->
		                    </div>
							<div style="height: 10px;"></div>
		                    <table class="table col-lg-12" style="text-align:center; vertical-align:middle;">
		                    	<tr class="row">
		                    		<th class="col-lg-1">
		                    			<span>??????</span>
		                    		</th>
		                    		<th class="col-lg-3">
		                    			<span>????????????</span><br><span>[??????????????????]</span>
		                    		</th>
		                    		<th class="col-lg-2">
		                    			<span>????????????</span>
		                    		</th>
		                    		<th class="col-lg-5">
		                    			<span>??????</span>
		                    		</th>
		                    		<th class="col-lg-1">
		                    			<span>??????</span>
		                    		</th>
		                    	</tr>
	                    		<c:set var="listCodeTransportDiv" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
									<c:choose>
										<c:when test="${fn:length(transport) eq 0}"> <!-- length(list)??? 0?????? ?????? ?????? -->
											<td class="text-center" colspan="5">????????? ???????????? ????????????. <b>?????? ?????????</b>?????? ??????????????????</td>
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
	                   			<i class="fa-solid fa-pencil"></i> ??????
	                		</button> -->
	                    </form>
	                    <div style="height: 50px;"></div>
                       <!--  <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="orderName" name="orderName" placeholder="??????*">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" data-toggle="modal" data-target="#orderTransportChangeModal" id="orderTransportChange" name="orderTransportChange" value="????????? ??????">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderNumber" name="orderNumber" placeholder="????????? ???????????? (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderHome" name="orderHome" placeholder="??? ???????????? (ex:021234567)*" maxlength="9" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                            <div class="col-md-5 form-group">
                                <input type="text" class="form-control" id="orderZip" name="orderZip" placeholder="?????? ??????">
                            </div>
                            <div class="col-md-3">
                                <input type="button" class="form-control genric-btn primary" id="orderPostSearch" name="orderPostSearch" value="?????? ??????">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddress" name="orderAddress" placeholder="??????">
                            </div>
                            <div class="col-md-8 form-group p_star">
                                <input type="text" class="form-control" id="orderAddressDetail" name="orderAddressDetail" placeholder="?????? ??????">
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <input type="checkbox" id="orderSaveShipping" name="orderSaveShipping">
                                    <label for="orderSaveShipping">???????????? ?????????????????????????</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group" style="height: 30px;"></div>
                        </form> -->
                        <div class="cart_inner">
			                <div class="table-responsive">
			                	<h1>?????? ??????</h1>
			                    <table class="table" style="text-align: center;">
			                        <thead>
			                            <tr>
			                                <th scope="col">?????? ??????</th>
			                                <th scope="col">??????</th>
			                                <th scope="col">??????</th>
			                                <th scope="col">??????</th>
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
			                                    <h5>???<fmt:formatNumber type="number" pattern="###,###,###" value="${book.price }" /></h5>
			                                </td>
			                                <td>
			                                    <div class="product_count">
													<label for="amount">??????:</label>
													<input type="text" name="amount" id="amount" maxlength="<c:out value="${book.stock }"/>" value="1" title="Quantity:" class="input-text qty" readonly>
													<button onclick="amountUp();"
													 class="increase items-count" type="button" style="padding-top: 3px;"><i class="lnr lnr-chevron-up"></i></button>
													<button onclick="amountDown();"
													 class="reduced items-count" type="button" style="padding-bottom: 8px;"><i class="lnr lnr-chevron-down"></i></button>
												</div>
			                                </td>
			                                <td>
			                                    <h5>???<span id="tablePrice"><c:out value="${book.price }"/></span></h5>
			                                    <input type="hidden" id="bookPrice" name="bookPrice" value="<c:out value="${book.price }"/>">
			                                </td>
			                            </tr>
			                            <tr>
			                                <td>
			
			                                </td>
			                                <td>
			
			                                </td>
			                                <td>
			                                    <h5>??????</h5>
			                                </td>
			                                <td>
			                                    <h5>???<span id="tableTotalCost"><c:out value="${book.price }"/></span></h5>
			                                </td>
			                            </tr>
			                        </tbody>
			                    </table>
			                </div>
			            </div>
		            </div>
                 	<div class="col-lg-4">
                        <div class="order_box">
                            <h2>?????? ??????</h2>
                            <ul class="list">
                                <li><a>?????? <span>??????</span></a></li>
                                <li><a> <p class="txt_line"><c:out value="${book.name }"/></p> <%-- <span id="amountCount" class="middle"></span> <span class="last">???<span id="amountPrice"><c:out value="${book.price }"/></span></span> --%></a></li>
                            </ul>
                            <ul class="list list_2">
                                <li><a>?????? ?????? <span>???<span id="bookPrice"><c:out value="${book.price }"/></span></span></a></li>
                                <li><a>????????? <span>??????</span></a></li>
                                <li><a>?????? ?????? ?????? <span>???<span id="purchasePrice"><c:out value="${book.price }"/></span></span></a></li>
                            </ul>
                            <div class="payment_item">
                                <div class="">
                                    <input type="radio" id="payment1" name="paymentRadio" value="1">
                                    <label for="payment1">?????? ????????????</label>
                                    <div class="check"></div>
                                </div>
                                <p>?????? ??????, ?????? ??????, ?????? ??????, ?????? ???/???, ?????? ??????????????? ????????? ??????????????????.</p>
                            </div>
                            <div class="payment_item active">
                                <div class="">
                                    <input type="radio" id="payment2" name="paymentRadio" value="2">
                                    <label for="payment2">Paypal </label>
                                    <img src="/resources/template/karma/img/product/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p>???????????? ?????? ?????? PayPal??? ?????? ?????? ?????? ????????? ????????? ??? ????????????.</p>
                            </div>
                            <div class="creat_account">
                                <input type="checkbox" id="purchaseCheck" name="purchaseCheck" value="1">
                                <label for="purchaseCheck">?????? ?????? ????????? ?????????????????? </label>
                                <a>?????? ?????????*</a>
                            </div>
                            <a class="primary-btn" id="purchaseBtn" name="purchaseBtn" >????????????</a>
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
		        <h5 class="modal-title" id="regTransportModalLabel">????????? ?????? ??????</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>??????</b>
		        		</div>
		        		<div class="col-lg-6">
		        			<select class="form-control col-lg-6" id="transportDiv" name="transportDiv">
                                <option value="1">???</option>
                                <option value="2">??? ???</option>
                            </select>
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>??????</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4 mb-2" id="name" name="name" value="">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>??????</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="zip" name="zip" readonly>
			        		<input type="button" class="form-control mb-2 genric-btn primary col-lg-4" id="regTransportSearch" name="regTransportAddressSearch" value="????????????" onclick="PostCode()">
		        			<input type="text" class="form-control mb-2" id="address1" name="address1" readonly>
		        			<input type="text" class="form-control mb-2" id="address2" name="address2">
		        			<input type="hidden" id="extraaddress" name="extraaddress">
		        			<input type="hidden" id="lng" name="lng">
		        			<input type="hidden" id="lat" name="lat">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>?????????</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control" id="phone" name="phone">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>????????????</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control" id="home" name="home">
		        		</div>
		        	</div>
	        	</div>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">??????</button>
		        <button type="button" class="genric-btn primary" id="regModBtn" name="regModBtn">??????</button>
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
	                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
	
	                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
	                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
	                var addr = ''; // ?????? ??????
	                var extraAddr = ''; // ???????????? ??????
	                var geocoder = new daum.maps.services.Geocoder(); // ??????-?????? ?????? ??????
	
	                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
	                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
	                    addr = data.roadAddress;
	                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
	                    addr = data.jibunAddress;
	                }
	
	                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
	                if(data.userSelectedType === 'R'){
	                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // ???????????? ??????, ??????????????? ?????? ????????????.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // ????????? ??????????????? ?????? ????????? ?????????.
	                    document.getElementById("extraaddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraaddress").value = '';
	                }
	                
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // ??????????????? ????????? ???????????????
	                    if (status === daum.maps.services.Status.OK) {

	                        var result = results[0]; //????????? ????????? ?????? ??????

	                        // ?????? ????????? ?????? ????????? ?????????
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	    	                document.getElementById("lng").value = coords.getLat(); // ?????? 
	    	                document.getElementById("lat").value = coords.getLng(); // ??????
	    	                
//	    	                //?????? ?????? ??????
//	    	                document.getElementById("lng").value = result[0].y; // ??????
//	    	                document.getElementById("lat").value = result[0].x; // ??????
	    	                
	                    }
	                });
	               
	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById('zip').value = data.zonecode; // ????????????
	                document.getElementById("address1").value = addr; // ??????
	                // ????????? ???????????? ????????? ????????????.
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
			alert("?????? ???????????? ???????????? ???????????? ????????????.");
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
	    $('.modal-title').text('????????? ?????? ??????');
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
					// response.result.colum??? ?????? ????????? ?????? col?????? ????????????.
				if(response.rt == "success") {
					    $('#transportModal').modal('show');
					    $('.modal-title').text('????????? ?????? ??????');
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
					alert("????????? ?????????????????????");
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
				alert("???????????? ??????????????????.");
		} else{
			if($('#payment').val() == '' || $('#payment').val() == null){
				alert("?????? ????????? ??????????????????.");
			} else{
				if($('#purchaseCheck').is(':checked') == false){
					alert("???????????? ?????? ??????????????? ??????????????????.");
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