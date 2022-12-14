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
					<h1>????????????</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberRegForm">????????????</a> 
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<form method="post" id="UMRForm" name="UMRForm">
		<input type="hidden" id="mainKey" name="mainKey">
		<input type="hidden" id="memberSeq" name="memberSeq" value="0">
		<section class="memberRegFormArea section_gap">
			<div class="billing_details">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h3>????????????</h3>
                       	<div class="row mb-3">
                            <div class="col-md-4 gy-3 form-group p_star">
                                <input type="text" class="form-control" id="name" name="name" value="<c:out value="${dto.name }" />" placeholder="??????*">
                            </div>
                            <div class="col-md-1 gy-3 form-group">
                            	<span class="align-self-center">??????</span>
                            </div>
                            <div class="col-md-2 gy-3 form-group">
                                <div>
                                    <input type="radio" id="genderMan" name="gender" value="1">
                                    <label for="genderMan">??????</label>
                                </div>
                            </div>    
                            <div class="col-md-2 gy-3 form-group">
                                <div>
                                    <input type="radio" id="genderWoman" name="gender" value="2">
                                    <label for="genderWoman">??????</label>
                                </div>
                            </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-4 form-group p_star">
                           		<input type="hidden" id="idAllowedNy" name="idAllowedNy" value="0">
                                <input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }"/>" placeholder="?????????*" maxlength="20" >
                            	<div class="invalid-feedback" id="idFeedback"></div>
                            </div>
                            <div class="col-md-2 form-group">
       	                        <input type="button" class="form-control genric-btn primary" id="idOverlap" name="idOverlap" value="????????????">
   	                        </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-4 form-group p_star">
                           		<input type="hidden" id="userNameAllowedNy" name="userNameAllowedNy" value="0">
                                <input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${dto.userName }" />" placeholder="?????????*">
                                <div class="invalid-feedback" id="userNameFeedback"></div>
                            </div>
                            <div class="col-md-2 form-group">
       	                        <input type="button" class="form-control genric-btn primary" id="userNameOverlap" name="userNameOverlap" value="????????????">
   	                        </div>
                           </div>
                           <div class="row">
                            <div class="col-md-5 form-group p_star">
                                <input type="password" class="form-control" id="password" name="password" value="<c:out value="${dto.password }" />" placeholder="????????????*">
                            </div>
                            <div class="col-md-5 form-group p_star">
                                <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" placeholder="???????????? ??????*" onkeyup="regPasswordCk();">
                                <label><div name="checkWord" id="checkWord" style="display: none; color:red;">????????? ????????? ???????????????.</div></label>
                            </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${dto.dob }" />" placeholder="ex)1999-01-23">
                                <!-- <input type="text" class="form-control" id="dob" name="dob" placeholder="???????????? (ex:19990506)*" maxlength="8" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');"> -->
                       
                            </div>
                            <div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${dto.phone }" />" placeholder="??????????????? (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                           </div>
                           <div class="row mb-3">
                            <div class="col-md-4 form-group p_star">
                                <input type="text" class="form-control" id="emailStart" name="emailStart" value="<c:out value="${dto.emailStart }"/>" placeholder="?????????*">
                            </div>
                            <span class="align-self-center" style="margin-bottom: 20px" id="emailMiddle" name="emailMiddle">@</span>
                            <div class="col-md-4 form-group p_star">
                                <input type="text" class="form-control" id="emailEnd" name="emailEnd" value="<c:out value="${dto.emailEnd }"/>" placeholder="????????????">
                            </div>
                            <div class="col-md-3 form-group p_star">
                                <select class="country_select" id="emailLast" name="emailLast">
                                    <option value="1">????????????</option>
                                    <option value="2">?????????</option>
                                    <option value="3">??????</option>
                                    <option value="4">?????????</option>
                                </select>
                            </div>
                            <input type="hidden" id="email" name="email" value="<c:out value="${dto.email }"/>">
                           </div>
                           <div class="row">
                            <div class="col-md-3 form-group">
                                <input type="text" class="form-control" id="zip" name="zip" value="<c:out value="${dto.zip }"/>" placeholder="????????????" readonly>
                           	</div>
                           	<div class="col-md-2 form-group">
                                <input type="button" class="form-control genric-btn primary" id="searchTransport" name="searchTransport" value="????????????" onclick="PostCode()">
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-7 form-group p_star">
                                <input type="text" class="form-control" id="address1" name="address1" value="<c:out value="${dto.address1 }"/>" placeholder="??????" readonly>
                            </div>
                            <div class="col-md-2 form-group">
                                <input type="hidden" class="form-control" id="extraAddress" name="extraAddress">
                            </div>
                            <div class="col-md-7 form-group p_star">
                                <input type="text" class="form-control" id="address2" name="address2" value="<c:out value="${dto.address2 }"/>" placeholder="????????????">
                            </div>
                           </div>
                           <div class="row" style="height: 30px;"></div>
                           <div class="row mb-5">
                            <div class="col-md-12 form-group">
                                <div class="Privacy">
                                    <span class="align-self-center" style="font-weight: bolder;">???????????? ????????????</span>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy1" name="privacy" value="1">
                                    <label for="Privacy1">1???</label>
                                </div>
                            </div>    
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy2" name="privacy" value="2">
                                    <label for="Privacy2">3???</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy3" name="privacy" value="3">
                                    <label for="Privacy3">5???</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy4" name="privacy" value="4">
                                    <label for="Privacy4">???????????????</label>
                                </div>
                            </div>
                        </div>
                           <div class="row mb-5">
                            <div class="col-md-12 form-group">
                                <div>
                                    <input type="checkbox" id="adAllReceive" name="adAllReceive" value="adAllReceive" onclick="selectAll(this);">
                                    <label for="adAllReceive" style="font-weight: bolder;">?????? ?????? ?????? ??????</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="email_ctr" name="email_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="email_ctr">????????? ??????</label>
                                </div>
                            </div>    
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="kakao_ctr" name="kakao_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="kakao_ctr">???????????? ??????</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="sms_ctr" name="sms_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="sms_ctr">SMS ?????? ??????</label>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="height: 40px;"></div>
                        <div class="row mb-5">
						   <div class="col-2">
						      <button type="button" class="genric-btn danger" id="cancelModalBtn" name="cancelModalBtn" data-toggle="modal" data-target="#cancelModal">
						      	<i class="fa-solid fa-xmark"></i> ??????
						      </button>
						   </div>
						   <div class="col-2 offset-8">
						     <button type="button" class="genric-btn primary" id="insertBtn" name="insertBtn">
						    	 <i class="fa-solid fa-plus"></i> ??????
						     </button>
						   </div>
						</div>
                    </div>
                </div>
             </div>
		</section>
	</form>
	<!-- start modal area -->
	<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="cancelModalLabel">?????????????????????????</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>???????????? ????????? ????????? ?????? ????????? ?????????. ?????????????????????????</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">??????</button>
	        <button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn">??????</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	
	
	<script type="text/javascript">

		function checkSelectAll()  {

			const checkboxes = document.querySelectorAll('input[name="adReceive"]');

			const checked = document.querySelectorAll('input[name="adReceive"]:checked');

			const selectAll = document.querySelector('input[name="adAllReceive"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
		}
		function selectAll(selectAll)  {
			const checkboxes = document.getElementsByName('adReceive');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}

	</script>
	
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
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	                
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
	
		var goUrlInsert = "/member/userInst";				/* #-> */
		var goUrlLogin = "/member/loginForm";
		var seq = $("input:hidden[name=memberSeq]");
		var form = $("form[name=UMRForm]"); 
		var mail = $("input:hidden[name=email]");
	
		$('input[type="checkbox"]').change(function(){
		    this.value = (Number(this.checked));
		});
		
/* 		$("#transportClearBtn").on("click", function(){
			$("#zip").val('');
			$("#extraaddress").val('');
			$("#address1").val('');
			$("#address2").val('');
		});  */
		
		$("#cancelBtn").on("click", function(){
			$(location).attr("href", goUrlLogin);
		});  
		
		$("#insertBtn").on("click", function(){
				form.attr("action", goUrlInsert).submit();
		}); 
		
/*  		$("#emailStart").blur(function(){
			alert("a");
			mail();	
		});
 		
 		$("#emailEnd").blur(function(){
			alert("b");
		});
*/
		function setMail() {
			const emailStart = $("#emailStart").val();
			const emailMiddle = $("#emailMiddle").text();
			const emailEnd = $("#emailEnd").val();
			if(emailStart != "" && emailEnd != "") {
				mail.val(emailStart+emailMiddle+emailEnd);
			}
		};
		
		$("#emailStart").change(function(){
			setMail()
		});
		
		//?????? ?????????
		$("#emailEnd").change(function(){
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
		
		
		$("#idOverlap").on("click", function(){
			/* if(!checkId('ifmmId', 2, 0, "???????????????,??????,????????????(-_.),4~20????????? ?????? ???????????????")) {
				return false;
			} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');
						document.getElementById("id").classList.add('is-valid');
	
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						document.getElementById("idFeedback").innerText = "?????? ????????? ????????? ?????????.";
						
						document.getElementById("idAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.remove('is-valid');
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "?????? ???????????? ????????? ?????????";
						
						document.getElementById("idAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		$("#userNameOverlap").on("click", function(){
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkUserName"
				/* ,data : $("#formLogin").serialize() */
				,data : { "userName" : $("#userName").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("userName").classList.remove('is-invalid');
						document.getElementById("userName").classList.add('is-valid');
	
						document.getElementById("userNameFeedback").classList.remove('invalid-feedback');
						document.getElementById("userNameFeedback").classList.add('valid-feedback');
						document.getElementById("userNameFeedback").innerText = "?????? ????????? ????????? ?????????.";
						
						document.getElementById("userNameAllowedNy").value = 1;
						
					} else {
						document.getElementById("userName").classList.remove('is-valid');
						document.getElementById("userName").classList.add('is-invalid');
						
						document.getElementById("userNameFeedback").classList.remove('valid-feedback');
						document.getElementById("userNameFeedback").classList.add('invalid-feedback');
						document.getElementById("userNameFeedback").innerText = "?????? ???????????? ????????? ?????????";
						
						document.getElementById("userNameAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
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