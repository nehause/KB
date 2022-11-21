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
					<h1>마이룸</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberMyRoom">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberRoomModForm">회원정보수정</a>
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
									<div class="user_name"><b><c:out value="${sessName }"/></b> 회원님</div>
								</td>
								<td>
									<span>통합 포인트</span><br>
									<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
								</td>
							</tr>
						</table>
						<br>
	                    <h3><b>회원정보수정</b></h3>
	                    <hr>
	                    <caption style="caption-side: top;"><h5>필수입력사항</h5></caption>
	                     <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>아이디</span>
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
	                    			<span>이름</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" readonly>
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>닉네임</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${item.userName }"/>">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>생년월일</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"/>" readonly>
	                    		</td>
	                    		<td class="col-lg-2">
	                    			<span>성별</span>
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<div class="col-lg-3" style="display:inline;">
             			 				<input class="form-check-input" type="radio" id="genderMan" name="gender" value="1" <c:if test="${item.gender eq 1 }">checked</c:if> readonly>
	                               		<label class="form-check-label" for="genderMan">남성</label>
                              		</div>
                              		<div class="offset-4" style="display:inline;">	
                              			<input class="form-check-input" type="radio" id="genderWoman" name="gender" value="2" <c:if test="${item.gender eq 2 }">checked</c:if> readonly>
	                               		<label class="form-check-label" for="genderWoman">여성</label>
	                            	</div>
	                            </td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>휴대폰번호</span>
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
	                                    <option value="1" <c:if test="${item.emailLast eq 1 }">selected</c:if>>직접입력</option>
	                                    <option value="2" <c:if test="${item.emailLast eq 2 }">selected</c:if>>네이버</option>
	                                    <option value="3" <c:if test="${item.emailLast eq 3 }">selected</c:if>>구글</option>
	                                    <option value="4" <c:if test="${item.emailLast eq 4 }">selected</c:if>>카카오</option>
	                                </select>
	                    			<input type="hidden" id="email" name="email" value="<c:out value="${item.email }"/>">
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>마케팅(광고)<br>수신동의 여부</span>
	                    		</td>
	                    		<td class="col-lg-10">
		                            <div class="col-lg-4" style="display: inline; text-align: left">
	                                    <input type="checkbox" id="modAdAllReceive" name="modAdAllReceive" value="modAdAllReceive" onclick="selectAll(this);">
	                                    <label for="modAdAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
		                            </div>
	                            	<div style="height: 20px;"></div>
		                            <div class="col-lg-12">
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="email_ctr" name="email_ctr" class="adReceive"  value="1" onclick="checkSelectAll();" <c:if test="${item.email_ctr eq 1 }">checked</c:if>>
		                                    <label for="email_ctr">이메일 수신</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="kakao_ctr" name="kakao_ctr" class="adReceive" value="1" onclick="checkSelectAll();" <c:if test="${item.kakao_ctr eq 1 }">checked</c:if>>
		                                    <label for="kakao_ctr">카카오톡 수신</label>
		                                </div>
		                                <div class="col-lg-4" style="display: inline;">
		                                    <input type="checkbox" id="sms_ctr" name="sms_ctr" class="adReceive" value="1" onclick="checkSelectAll();" <c:if test="${item.sms_ctr eq 1 }">checked</c:if>>
		                                    <label for="sms_ctr">SMS 수신 동의</label>
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
	                    <caption style="caption-side: top;"><h5>선택입력사항</h5></caption>
	                    <table class="table col-lg-12">
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>기본주소[집]</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="row">
	                    				<div class="col-lg-4">
	                    					<input type="text" class="form-control mb-2" id="zip" name="zip" value="<c:out value="${item.zip }"/>" readonly>
	                    				</div>
	                    				<div class="col-lg-3">
											<button type="button" class="genric-btn primary mb-2" id="searchTransport" name="searchTransport" onclick="PostCode()">
												<i class="fa-solid fa-map"></i> 주소검색
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
	                    						<li>위의 주소를 수정 하면 주소록의 기본 주소도 변경됩니다.</li>
												<li>기본 주소는 회원정보관리>나의주소록에서 설정 하실 수 있습니다.</li>
												<li>본 주소는 서비스, 경품 배송을 위한 목적 등 회원관리를 위해 이용/저장되며, 회원탈퇴 시 삭제됩니다.</li>
	                    					</ul>
	                    				</div>
                    				</div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-2">
	                    			<span>개인정보 <br> 유효기간</span>
	                    		</td>
	                    		<td class="col-lg-10">
	                    			<div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy1" name="privacy" value="1" <c:if test="${item.privacy eq 1 }">checked</c:if>>
	                                    <label for="privacy1">1년</label>
		                            </div>    
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy2" name="privacy" value="2" <c:if test="${item.privacy eq 2 }">checked</c:if>>
	                                    <label for="privacy2">3년</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
	                                    <input type="radio" id="privacy3" name="privacy" value="3" <c:if test="${item.privacy eq 3 }">checked</c:if>>
                                   		<label for="privacy3">5년</label>
		                            </div>
		                            <div class="col-lg-3 form-group" style="display: inline;">
                                	    <input type="radio" id="privacy4" name="privacy" value="4" <c:if test="${item.privacy eq 4 }">checked</c:if>>
	                                    <label for="privacy4">탈퇴시까지</label>
		                            </div>
	                    		</td>
	                    	</tr>
	                    	<tr class="row">
	                    		<td class="col-lg-12">
	                    		</td>
	                    	</tr>
	                    	<caption style="caption-side: bottom; float:right;">
						   		<button type="button" class="genric-btn primary" id="modBtn" name="modBtn">
						   			<i class="fa-solid fa-pencil"></i> 수정
						    	</button>
						    	<button type="button" class="genric-btn danger" id="modFormCancel" data-toggle="modal" data-target="#modCancelModal">
						    		<i class="fa-solid fa-xmark"></i> 취소
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
	        <h5 class="modal-title" id="modCancelModalLabel">돌아가시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>지금까지 기입한 정보가 전부 초기화 됩니다. 돌아가시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn"">취소</button>
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
	    	                document.getElementById("lag").value = coords.getLat(); // 위도 
	    	                document.getElementById("lat").value = coords.getLng(); // 경도
	    	                
//	    	                //위의 것과 같다
//	    	                document.getElementById("lag").value = result[0].y; // 위도
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