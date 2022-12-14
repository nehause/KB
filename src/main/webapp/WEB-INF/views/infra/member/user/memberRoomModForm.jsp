<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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
						<a href="/member/memberRoomModForm">??????????????????</a>
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
                	<form id="MMForm" name="MMForm" method="post">
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
						<br>
	                    <h3><b>??????????????????</b></h3>
	                    <hr>
	                    <caption style="caption-side: top;"><h5>??????????????????</h5></caption>
	                     <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>?????????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"/>" readonly>
	                    		</td>
	                    		<td class="col-lg-2">
	                    		</td>
	                    		<td class="col-lg-4">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>??????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" readonly>
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>?????????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${item.userName }"/>">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>????????????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"/>" readonly>
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>??????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<div class="col-lg-3" style="display:inline;">
             			 				<input class="form-check-input" type="radio" id="genderMan" name="gender" value="1" <c:if test="${item.gender eq 1 }">checked</c:if> readonly>
	                               		<label class="form-check-label" for="genderMan">??????</label>
                              		</div>
                              		<div class="offset-4" style="display:inline;">	
                              			<input class="form-check-input" type="radio" id="genderWoman" name="gender" value="2" <c:if test="${item.gender eq 2 }">checked</c:if> readonly>
	                               		<label class="form-check-label" for="genderWoman">??????</label>
	                            	</div>
	                            </td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>???????????????</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone }"/>">
	                    		</td>
	                    		<td class="col-lg-2">
	                    		</td>
	                    		<td class="col-lg-4">
	                            </td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>Email</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="text" class="form-control" id="emailStart" name="emailStart" value="<c:out value="${item.emailStart }"/>">
	                    		</td>
	                    		<td class="col-lg-1" style="text-align: center; padding-top: 20px;">
	                    			<span id="emailMiddle" name="emailMiddle""> @ </span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="text" class="form-control" id="emailEnd" name="emailEnd" value="<c:out value="${item.emailEnd }"/>">
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<select class="country_select" id="emailLast" name="emailLast">
	                                    <option value="1" <c:if test="${item.emailLast eq 1 }">selected</c:if>>????????????</option>
	                                    <option value="2" <c:if test="${item.emailLast eq 2 }">selected</c:if>>?????????</option>
	                                    <option value="3" <c:if test="${item.emailLast eq 3 }">selected</c:if>>??????</option>
	                                    <option value="4" <c:if test="${item.emailLast eq 4 }">selected</c:if>>?????????</option>
	                                </select>
	                    			<input type="hidden" id="email" name="email" value="<c:out value="${item.email }"/>">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>?????????(??????)<br>???????????? ??????</span>
	                    		</td>
	                    		<td class="col-lg-10">
		                            <div class="col-lg-4" style="display: inline; text-align: left">
	                                    <input type="checkbox" id="modAdAllReceive" name="modAdAllReceive" value="modAdAllReceive" onclick="selectAll(this);">
	                                    <label for="modAdAllReceive" style="font-weight: bolder;">?????? ?????? ?????? ??????</label>
		                            </div>
	                            	<div style="height: 20px;"></div>
		                            <div class="col-lg-12">
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="email_ctr" name="email_ctr" class="adReceive"  value="1" onclick="checkSelectAll();" <c:if test="${item.email_ctr eq 1 }">checked</c:if>>
		                                    <label for="email_ctr">????????? ??????</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="kakao_ctr" name="kakao_ctr" class="adReceive" value="1" onclick="checkSelectAll();" <c:if test="${item.kakao_ctr eq 1 }">checked</c:if>>
		                                    <label for="kakao_ctr">???????????? ??????</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="sms_ctr" name="sms_ctr" class="adReceive" value="1" onclick="checkSelectAll();" <c:if test="${item.sms_ctr eq 1 }">checked</c:if>>
		                                    <label for="sms_ctr">SMS ?????? ??????</label>
		                                </div>
		                            </div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class=col-lg-12>
	                    		</td>
	                    	</tr>
	                    </table>
	                    <div style="height: 10px;"></div>
	                    <caption style="caption-side: top;"><h5>??????????????????</h5></caption>
	                    <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>????????????[???]</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="row">
	                    				<div class="col-lg-4">
	                    					<input type="text" class="form-control mb-2" id="zip" name="zip" value="<c:out value="${item.zip }"/>" readonly>
	                    				</div>
	                    				<div class="col-lg-3">
											<button type="button" class="genric-btn primary mb-2" id="searchTransport" name="searchTransport" onclick="PostCode()">
												<i class="fa-solid fa-map"></i> ????????????
											</button>
										</div>
	                    				<div class="col-lg-7">
	                    					<input type="text" class="form-control mb-2" id="address1" name="address1" value="<c:out value="${item.address1 }"/>" readonly>
	                    					<input type="hidden" class="form-control" id="extraaddress" name="extraaddress">
	                    				</div>
	                    				<div class="col-lg-7">
	                    					<input type="text" class="form-control mb-2" id="address2" name="address2" value="<c:out value="${item.address2 }"/>">
      										<input type="hidden" class="form-control" id="lag" name="lag">
       										<input type="hidden" class="form-control" id="lat" name="lat">
	                    				</div>
	                    				<div class="col-lg-12">
	                    					<br>
	                    					<ul>
	                    						<li>?????? ????????? ?????? ?????? ???????????? ?????? ????????? ???????????????.</li>
												<li>?????? ????????? ??????????????????>????????????????????? ?????? ?????? ??? ????????????.</li>
												<li>??? ????????? ?????????, ?????? ????????? ?????? ?????? ??? ??????????????? ?????? ??????/????????????, ???????????? ??? ???????????????.</li>
	                    					</ul>
	                    				</div>
                    				</div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>???????????? <br> ????????????</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy1" name="privacy" value="1" <c:if test="${item.privacy eq 1 }">checked</c:if>>
	                                    <label for="privacy1">1???</label>
		                            </div>    
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy2" name="privacy" value="2" <c:if test="${item.privacy eq 2 }">checked</c:if>>
	                                    <label for="privacy2">3???</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy3" name="privacy" value="3" <c:if test="${item.privacy eq 3 }">checked</c:if>>
                                   		<label for="privacy3">5???</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
                                	    <input type="radio" id="privacy4" name="privacy" value="4" <c:if test="${item.privacy eq 4 }">checked</c:if>>
	                                    <label for="privacy4">???????????????</label>
		                            </div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-12">
	                    		</td>
	                    	</tr>
	                    	<caption style="caption-side: bottom; float:right;">
						   		<button type="button" class="genric-btn primary" id="modBtn" name="modBtn">
						   			<i class="fa-solid fa-pencil"></i> ??????
						    	</button>
						    	<button type="button" class="genric-btn danger" id="modFormCancel" data-toggle="modal" data-target="#modCancelModal">
						    		<i class="fa-solid fa-xmark"></i> ??????
						    	</button>
							</caption>
	                    </table>
                    </form>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	<!-- start modal area -->
	<div class="modal fade" id="modCancelModal" tabindex="-1" aria-labelledby="modCancelModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="modCancelModalLabel">?????????????????????????</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>???????????? ????????? ????????? ?????? ????????? ?????????. ?????????????????????????</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">??????</button>
	        <button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn"">??????</button>
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
	    	                document.getElementById("lag").value = coords.getLat(); // ?????? 
	    	                document.getElementById("lat").value = coords.getLng(); // ??????
	    	                
//	    	                //?????? ?????? ??????
//	    	                document.getElementById("lag").value = result[0].y; // ??????
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
	
	<script type="text/javascript">
	function checkSelectAll()  {

		const checkboxes = document.querySelectorAll('input[name="modAdReceive"]');

		const checked = document.querySelectorAll('input[name="modAdReceive"]:checked');

		const selectAll = document.querySelector('input[name="modAdAllReceive"]');
		  
		if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
		}else {
		  selectAll.checked = false;
		}
	}
	function selectAll(selectAll)  {
		const checkboxes = document.getElementsByName('modAdReceive');
		
		checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
	</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	
		var goUserRoom = "/member/memberMyRoom";					/* #-> */
		var goUserUpdate = "/member/userUpdate";				/* #-> */
		
		var seq = $("input:hidden[name=memberSeq]");
		
		var form = $("form[name=MMForm]");
	
		$('input[type="checkbox"]').change(function(){
		    this.value = (Number(this.checked));
		});
		
		
		 function setMail() {
			const emailStart = $("#emailStart").val();
			const emailMiddle = $("#emailMiddle").text();
			const emailEnd = $("#emailEnd").val();
			if(emailStart != "" && emailEnd != "") {
				mail.val(emailStart+emailMiddle+emailEnd);
			}
		};
		
		$("#emailStart").focusout(function(){
			setMail()
		});
		$("#emailEnd").focusout(function(){
			setMail()
		});
		
		$(function(){
			$(document).ready(function(){
				$('select[name=emailLast]').change(function() {
					if($(this).val()=="1"){				
						$('#emailEnd').val("");		
						$("#emailEnd").attr("readonly", false);
						setMail();
					} else if($(this).val()=="2") {				
						$('#emailEnd').val('naver.com');				
						$("#emailEnd").attr("readonly", true);
						setMail();
					} else if($(this).val()=="3") {				
						$('#emailEnd').val('google.com');				
						$("#emailEnd").attr("readonly", true);
						setMail();
					} else {		
						$('#emailEnd').val('kakao.com');				
						$("#emailEnd").attr("readonly", true);
						setMail();
					}
				});	
			});
		});
		
		$("#cancelBtn").on("click", function(){
			$("location").attr("herf", goUserRoom);
		}); 

		$("#modBtn").on("click", function(){
	   		form.attr("action", goUserUpdate).submit();
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