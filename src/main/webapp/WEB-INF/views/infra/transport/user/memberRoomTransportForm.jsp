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
					<h1>?????????</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberMyRoom">?????????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/transport/transportForm">?????? ?????????</a>
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
									<div class="user_name"><b><c:out value="${sessName }"/></b> ?????????</div>
								</td>
								<td>
									<span>?????? ?????????</span><br>
									<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
								</td>
							</tr>
						</table>
	                	<div style="height: 20px;"></div>
	                    <h3><b>?????? ?????????</b></h3>
	                    <div class="border row" style="background-color: #F0F0F0;">
	                    	<div class="col-lg-2" style="margin:10px;">
	                    		<span>????????? ?????? </span><span><b><c:out value="${vo.totalRows}"/>???</b></span>
	                    	</div>
	                    	<div class="col-lg-3 offset-6">
	                    		<button type="button" class="genric-btn default" id="regModalBtn" name="regModalBtn"> 
                   					<i class="fa-solid fa-caret-right"></i> ????????? ?????? ??????
                				</button>
                			</div>
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
									<c:when test="${fn:length(userTransport) eq 0}"> <!-- length(list)??? 0?????? ?????? ?????? -->
										<td class="text-center" colspan="5">????????? ???????????? ????????????.</td>
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
                   			<i class="fa-solid fa-pencil"></i> ??????
                		</button>
                		<button type="button" class="genric-btn danger col-lg-2" style="float:right; margin-right:10px;" data-toggle="modal" data-target="#delectTransportModal" id="delectModalBtn"> 
                   			<i class="fa-solid fa-trash-can"></i> ??????
                		</button>
                    </form>
                    <div style="height: 80px;"></div>
                   	<div class="border">
                   		<div style="background-color: #F0F0F0;">
                   			<h4 style="padding: 10px;"><b><i class="fa-solid fa-circle-exclamation"></i></b> ????????? ?????? </h4>
                   		</div>
                   		<div>
                   			<ul style="margin: 10px; padding:10px;">
                   				<li>?????? ????????? ??? ?????? ?????? ?????? ???????????? ?????? ????????????, ????????? ???????????? ?????? ????????? ?????? ?????? ??? ????????????.</li>
								<li>?????? ????????? ?????? ????????????, ?????? ??? ??? ????????????.</li>
								<li>?????? ????????? ?????? ????????? ???????????? ????????? ????????? ?????? ????????????, ??????/????????? ????????????????????? ???????????? ????????? ???????????????.</li>
								<li>????????? ????????? ??????(???, ??????, ??????) ????????? ???????????????.</li>
								<li>?????? ?????? ????????? ??? 1????????? ?????? ????????????, ??????????????? ?????? 99????????? ???????????? ????????????.</li>
								<li>?????? ?????? ????????? ?????? 1?????? ????????? ??????, ?????? ?????? ??? ????????? ?????? ????????? ??????????????? ?????? ????????????.</li>
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
		        			<input type="hidden" id="transportSeq" name="transportSeq">
		        			<select class="form-control col-lg-6" id="transportDiv" name="transportDiv">
                                <option value="1">???</option>
                                <option value="2">??? ???</option>
                            </select>
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<input type="hidden" id="member_memberSeq" name="member_memberSeq">
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
	
	<!-- start new Transport modal area -->
	<!-- <form name="modTransportForm" method="get" action="memberTransport.html" id="modTransportForm">
		<div class="modal fade" id="modTransportModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="modTransportModalLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="modTransportModalLabel">?????? ??????</h5>
		        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
		      </div>
		      <div class="modal-body">
		        <div class="col-lg-12">
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>??????</b>
		        		</div>
		        		<div class="col-lg-6">
		        			<select class="country_select col-lg-6" style="display: inline; padding-right:60px;" id="regTransportHomeStart" name="regTransportHomeStart">
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
		        			<input type="text" class="form-control col-lg-4" id="modTransportName" name="modTransportName">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 allCenter">
		        			<b>??????</b>
		        		</div>
		        		<div class="col-lg-9">
		        			<input type="text" class="form-control col-lg-4" style="display: inline;" id="zip" name="zip">
			        		<input type="button" class="form-control genric-btn primary col-lg-4" id="transportSearch" name="transportSearch" value="????????????">
		        			<input type="text" class="form-control" id="address1" name="address1">
		        			<input type="text" class="form-control" id="address2" name="address2">
		        			<input type="hidden" id="extraaddress" name="extraaddress">
		        			<input type="hidden" id="lng" name="lng">
		        			<input type="hidden" id="lat" name="lat">
		        		</div>
		        	</div>
		        	<div class="row marginSpace">
		        		<div class="col-lg-3 textCenter">
		        			<b>????????????</b>
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
		        			<b>?????????</b>
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
		        <button type="button" class="genric-btn default border-0" data-dismiss="modal">??????</button>
		        <button type="button" class="genric-btn primary" onclick="modTransportSubmit();">??????</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form> -->
	<!-- end new Transport modal area -->
	
	<!-- start modal area -->
	<div class="modal fade" id="delectTransportModal" tabindex="-1" aria-labelledby="delectTransportModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="delectTransportModalLabel">?????????????????????????</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>????????? ?????? ????????? ???????????????. ?????????????????????????</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">??????</button>
	        <button type="button" class="genric-btn danger" id="delBtn" name="delBtn">??????</button>
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