<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<title>코드 관리</title>
	<link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<!-- cdn = 온라인 해석기 -->
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<style> 
		
		th {
			color: white;
		}
		.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
	</style>
	
	<link href="/resources/dmin/css/sideBar.css" rel="stylesheet">	
</head>
<body>

<!-- start -->
	<!-- header navBar start -->
	<%@include file="../../../common/dmin/include/headNavBar.jsp"%>
	<!-- header navBar end -->
		<div class="container-fluid">
			<div class="row" style="padding-left: 20px; padding-right: 20px;">
				<!-- navBar start -->
				<%@include file="../../../common/dmin/include/dminSideBar.jsp"%>
				<!-- navBar end -->
				<div class="col-lg-10">
					<form method="post" id="OVForm" name="OVForm" autocomplete="off">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="orderVo.jsp"%>
						<!-- *Vo.jsp e -->
						<div class="row">
							<H1>주문 관리</H1>
							<div class="col-sm-5 gy-4 offset-1">
								<label for="purchaseSeq">주문 번호</label>
								<input type="text" class="form-control" id="purchaseSeq" value="<c:out value="${item.purchaseSeq }"/>" placeholder="자동생성" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="member_memberSeq">회원 번호</label>
								<input type="text" class="form-control" id="member_memberSeq" name="member_memberSeq" value="<c:out value="${item.member_memberSeq }"/>" placeholder="자동생성" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="memberName">회원 이름</label>
								<input type="text" class="form-control" id="memberName" name="memberName" value="<c:out value="${item.memberName }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="purchaseStatus">배송 상태</label>
								<input type="text" class="form-control" id="purchaseStatus" name="purchaseStatus" value="<c:out value="${item.purchaseStatus }"/>" placeholder="한글, 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="payment">결제 수단</label>
								<input type="text" class="form-control" id="payment" name="payment" value="<c:out value="${item.payment }"/>" placeholder="한글, 숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="delNy">삭제 여부</label>
								<select class="form-select" id="delNy" name="delNy">
									<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="time">결제 시간</label>
								<input type="text" class="form-control" id="time" name="time" value="<c:out value="${item.time }"/>" placeholder="영문(대소문자), 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="toc">수정 시간</label>
								<input type="text" class="form-control" id="toc" name="toc" value="<c:out value="${item.toc }"/>" placeholder="영문(대소문자), 숫자">
							</div>
						</div>
						<div class="row" style="padding-top: 30px;">
							<h2 class="offset-1">구매 정보</h2>
						</div>
						<c:forEach items="${purchaseBook}" var="purchaseBook" varStatus="status">
							<div class="row">
								<div class="col-sm-5 gy-4 offset-1">
									<label for="name">책 이름</label>
									<input type="text" class="form-control" id="name" name="name" value="<c:out value="${purchaseBook.name }"/>" placeholder="영문(대소문자), 숫자">
								</div>
								<div class="col-sm-1 gy-4">
									<label for="count">구매 수량</label>
									<input type="text" class="form-control" id="count" name="count" value="<c:out value="${purchaseBook.count }"/>" placeholder="영문(대소문자), 숫자">
								</div>
								<div class="col-sm-4 gy-4">
									<label for="price">가격</label>
									<input type="text" class="form-control" id="price" name="price" value="<c:out value="${purchaseBook.price }"/>" placeholder="영문(대소문자), 숫자">
								</div>
							</div>
						</c:forEach>
						<div class="row">	
							<h2 class="offset-1" style="padding-top: 30px;">배송지 정보</h2>
							<div class="col-sm-5 gy-4 offset-1">
								<label for="transport_transportSeq">배송지 번호</label>
								<select class="form-select" id="transport_transportSeq" name="transport_transportSeq">
									<option value="">
										 배송지 번호 선택
									</option>
									<c:forEach items="${memberTransport}" var="memberTransport" varStatus="status">
										<option value="${memberTransport.transportSeq}"  <c:if test="${memberTransport.transportSeq eq item.transport_transportSeq}">selected</c:if>>
											<c:out value="${memberTransport.transportSeq }"/>
										</option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="phone">휴대전화번호</label>
								<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone }"/>" placeholder="ex)01012345678">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="home">집전화번호</label>
								<input type="text" class="form-control" id="home" name="home" value="<c:out value="${item.home }"/>" placeholder="ex)021234567">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="zip">우편번호</label>
								<input type="text" class="form-control" id="zip" name="zip" value="<c:out value="${item.zip }"/>" placeholder="우편번호" readonly>
							</div>
							<div class="col-sm-2 gy-4" style="margin-top: 48px;">
								<label for="searchTransport"> </label>
								<button type="button" class="btn btn-success" id="searchTransport" name="searchTransport" onclick="PostCode()">
									<i class="fa-solid fa-map"></i> 주소검색
								</button>
								<button class="btn btn-warning" type="button" id="transportClearBtn" name="transportClearBtn" style="width: 40px; height:38px; margin-right: 10px;">
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
							</div>
							<div class="col-sm-3 gy-4">
								<label for="extraaddress">참고항목</label>
								<input type="text" class="form-control" id="extraaddress" name="extraaddress" value="" placeholder=" 참고항목" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="address1">주소</label>
								<input type="text" class="form-control" id="address1" name="address1" value="<c:out value="${item.address1 }"/>" placeholder="주소" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="address2">상세주소</label>
								<input type="text" class="form-control" id="address2" name="address2" value="<c:out value="${item.address2 }"/>" placeholder="상세주소">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="lng">위도</label>
								<input type="text" class="form-control" id="lng" name="lng" value="<c:out value="${item.lng }"/>" placeholder="위도" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="lat">경도</label>
								<input type="text" class="form-control" id="lat" name="lat" value="<c:out value="${item.lat }"/>" placeholder="경도" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="map">지도</label>
								<div id="map" style="height:300px; margin-top:10px;"></div>
							</div>
						</div>
						<!-- viewBtn start -->
						<%@include file="../../../common/dmin/include/viewBtn.jsp"%>
						<!-- viewBtn end -->
					</form>
				</div>
			</div>
		</div>
		<!-- viewModal start -->
		<%@include file="../../../common/dmin/include/viewModal.jsp"%>
		<!-- viewModal end -->
	<form name="OVFormVo" id="OVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="orderVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>

<!-- end -->
	<!-- <script type="text/javascript">
	function check(){
		
		if(document.getElementById('CCG_CGSeq').value == '' || document.getElementById('CCG_CGSeq').value == null){
			alert("코드그룹을 분류해주세요");
			document.getElementById('CCG_CGSeq').value = "";
			document.getElementById('CCG_CGSeq').focus();
			return false;
		}
		
		
		if(document.getElementById('COrder').value == '' || document.getElementById('COrder').value == null){
			alert("순서를 입력해주세요");
			document.getElementById('COrder').value = "";
			document.getElementById('COrder').focus();
			return false;
		}
		
		
		if(document.getElementById('CNameKor').value == '' || document.getElementById('CNameKor').value == null){
			alert("한글명을 입력해주세요");
			document.getElementById('CNameKor').value = "";
			document.getElementById('CNameKor').focus();
			return false;
		}
		
		
		if(document.getElementById('CNameEng').value == '' || document.getElementById('CNameEng').value == null){
			alert("영문명을 입력해주세요");
			document.getElementById('CNameEng').value = "";
			document.getElementById('CNameEng').focus();
			return false;
		}
		
		
		if(document.getElementById('CRegistration').value == '' || document.getElementById('CRegistration').value == null){
			alert("등록일을 입력해주세요");
			document.getElementById('CRegistration').value = "";
			document.getElementById('CRegistration').focus();
			return false;
		}
		
		document.getElementById('regCodeForm').submit();
		return false;

	}
	</script> -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	    mapOption = {
	        center: new daum.maps.LatLng(${item.lng}, ${item.lat}), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };
	
	    //지도를 미리 생성
	    var map = new daum.maps.Map(mapContainer, mapOption);
	    //주소-좌표 변환 객체를 생성
	    var geocoder = new daum.maps.services.Geocoder();
	    //마커를 미리 생성
	    var marker = new daum.maps.Marker({
	        position: new daum.maps.LatLng(${item.lng}, ${item.lat}),
	        map: map
	    });
	    
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
	 						mapContainer.style.display = "block";
	                        map.relayout();
	                        // 지도 중심을 변경한다.
	                        map.setCenter(coords);
	                        // 마커를 결과값으로 받은 위치로 옮긴다.
	                        marker.setPosition(coords)
	    	                
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
		var goUrlList = "/order/orderList";					/* #-> */
		var goUrlInsert = "/order/orderInst";				/* #-> */
		var goUrlUpdate = "/order/orderUpdate";				/* #-> */
		var goUrlUelete = "/order/orderUelete";				/* #-> */
		var goUrlDelete = "/order/orderDelete";				/* #-> */
		
		var seq = $("input:hidden[name=purchaseSeq]");
		
		var form = $("form[name=OVForm]"); 
		var formVo = $("form[name=OVFormVo]");
		
		$("#listBtn").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		}); 
		
		$("#updateBtn").on("click", function(){
			if(seq.val() == "0" || seq.val() == ""){
				form.attr("action", goUrlInsert).submit();
			} else{
				form.attr("action", goUrlUpdate).submit();	
			}
		});
		
		$("#deleteBtn").on("click", function(){
	   		form.attr("action", goUrlDelete).submit();
		}); 
		
		$("#ueleteBtn").on("click", function(){
	   		form.attr("action", goUrlUelete).submit();
		}); 
	</script>
	
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>