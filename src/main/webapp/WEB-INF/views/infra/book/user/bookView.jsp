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

	<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/resources/member/main.html" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="/resources/member/main.html">메인</a></li>
							<li class="nav-item"><a class="nav-link" href="/resources/member/loginForm.html">로그인</a></li>
							<li class="nav-item submenu dropdown active">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">국내도서</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookList.html">책 목록</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/book/bookView.html">책 상세</a></li>
								</ul>
							</li>
							<!-- <li class="nav-item"><a class="nav-link" href="/resources/member/memberRoomForm.html">마이룸</a></li> -->
							<li class="nav-item submenu dropdown"> 
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이룸</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberRoomForm.html">주문/배송 조회</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberModCheckForm.html">회원정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberModPasswordForm.html">비밀번호 변경</a></li>
									<li class="nav-item"><a class="nav-link" href="/resources/member/memberTransport.html">나의 주소록</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="검색어를 입력해주세요">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>도서 상세 페이지</h1>
					<nav class="d-flex align-items-center">
						<a href="/resources/member/main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">도서 구매<span class="lnr lnr-arrow-right"></span></a>
						<a href="bookView.html">도서 상세 페이지</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="single-deal">
						<div class="overlay"></div>
						<img class="img-fluid" src="/resources/images/bp1.png" alt="">
						<a href="/resources/images/bp1.png" class="img-pop-up" target="_blank">
							<div class="deal-details">
								<h6 class="deal-title">이미지 보기</h6>
							</div>
						</a>
					</div>
					<!-- <div class="s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
					</div> -->
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>역행자</h3>
						<h4 style="color: gray">돈.시간.운명으로부터 완전한 자유를 얻는 7단계 인생 공략집</h4>
						<h2>₩15,750</h2>
						<ul class="list">
							<li>
								<a><span>작가</span> : 자청</a>
							</li>
							<li>
								<a><span>출판사</span> : 웅진지식하우스</a>
							</li>
							<li><a class="active" href="#"><span>분야</span> : 자기계발 > 성공/처세 > 성공스토리
							</a></li>
							<li><a><span>구매가능수량</span> : 재고 한도 내</a></li>
						</ul>
						<p><b style="color: black">“절대 읽지 마라! 죽을 때까지 순리자로 살고 싶다면!”
							<br>오타쿠 흙수저에서
							월 1억 자동 수익을 실현한 무자본 연쇄창업마,
							라이프해커 자청의 인생 역주행 공식 대공개! </b></p>
						<div class="product_count">
							<label for="qty">수량:</label>
							<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;"
							 class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) && sst > 1 ) result.value--;"
							 class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
						</div>
						<div class="card_area d-flex align-items-center">
							<a class="primary-btn" href="/resources/order/orderPayment.html">구매하기</a>
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">상세설명</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="writer-tab" data-toggle="tab" href="#writer" role="tab" aria-controls="writer"
					 aria-selected="false">작가 소개</a>
				</li>
				<!-- <li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">도서 상세</a>
				</li> -->
				<!-- <li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">Comments</a>
				</li> -->
				<li class="nav-item">
					<a class="nav-link" id="review-tab" data-toggle="tab" href="#bookMemberReview" role="tab" aria-controls="bookMemberReview"
					 aria-selected="false">리뷰</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<table class="table">
						<tbody>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>
									<h5>ISBN</h5>
								</td>
								<td>
									<h5>9788901260716(8901260719)</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>쪽수</h5>
								</td>
								<td>
									<h5>314쪽</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>크기</h5>
								</td>
								<td>
									<h5>143 * 195 * 26 mm /564g</h5>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
<!-- 								<tr>
									<td>
										<h5>Weight</h5>
									</td>
									<td>
										<h5>52gm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Quality checking</h5>
									</td>
									<td>
										<h5>yes</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Freshness Duration</h5>
									</td>
									<td>
										<h5>03days</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>When packeting</h5>
									</td>
									<td>
										<h5>Without touch of hand</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Each Box contains</h5>
									</td>
									<td>
										<h5>60pcs</h5>
									</td>
								</tr> -->
						</tbody>
					</table>
					<div class="firstIntroduce">
					<br><br>
					<p>대부분의 사람들은 유전자와 본성의 명령을 그대로 따르기 때문에 평범함을 벗어날 수 없다. 하지만 정작 자신은 이를 모른 채 ‘나는 달라’ 하는 자의식에 사로잡혀서 무한 합리화에 빠져 살아간다.
					스스로가 얼마나 많은 정신적, 심리적 오류를 저지르는지 알지 못한 채 매일 똑같은 쳇바퀴를 돌 뿐이다. 왜 우리는 진짜 자유를 얻지 못하는가? 왜 늘 돈 이야기를 하면서도 평생 돈에 허덕이는가?
					<br><br>저자 역시 스무 살까지는 이런 쳇바퀴에 갇혀 있었기 때문에, 그 상황을 누구보다 잘 알았다. 자청의 첫 책 『역행자』에는 가난한 인생에서 벗어나 경제적 자유와 행복을 얻은 저자가 깨달은 인생 레벨업 치트키가 빼곡히 담겨 있다. 
					10대 때의 그는 외모, 돈, 공부, 그 어떤 것에서도 최하위였다. 그러던 스무 살 무렵, ‘인생에도 게임처럼 공략집이 있다’는 사실을 깨닫고 삶이 180도 바뀌기 시작한다. 200여 권의 책을 독파하며 얻은 인생의 치트키들을 활용해 창업에 연이어 성공한 것이다.
					‘연봉 10억 무자본 창업가’로 유명해진 그는 2020년, 단 20개의 영상으로 10만 구독자를 넘어서며 화제를 모았으나 곧장 미련 없이 유튜브를 그만뒀다. 
					이후 본업인 온라인 마케팅 비즈니스를 비롯해 다방면으로 사업을 확장하고 있다. 그 사이 ‘라이프해커 자청’이라는 캐릭터와 ‘무자본 창업’이라는 개념은 사람들의 고정관념을 깨는 상징이 됐다. 
					자청이 찾아낸 ‘역행자의 7단계 모델’을 통해 함께 ‘인생의 추월차선’으로 향하자.</p>
					<br><br>
					</div>
					<div>
						<h4>상세 이미지</h4>	
						<div class="detailImages" id="detailImages" name="detailImages" style="display: block;">
							<img alt="" src="images/bv1.png">  <!-- 이미지 크기는 가로 1050px -->
						</div>
						<input type='button' id="DIBtn" value='닫기' onclick="DIShow()">
					</div>
					<br><br>
					<h4>목차</h4>
					<div class="bookList">
					<br>
					<br>프롤로그 30대 초반, 일하지 않아도 월 1억씩 버는 자동 수익이 완성되다
					<br><br>
					<br>CHAPTER1 나는 어떻게 경제적 자유에 이르게 되었나
					<br>1막/ 3개의 벽_ 인생에서 절대 넘을 수 없을 거라 믿었던 것
					<br>2막/ 하루 2시간, 기적의 시작_ 역행자의 첫 번째 단서
					<br>3막/ 배수의 진_ “19000원이 입금되었습니다”
					<br>4막/ 행운 뒤에 숨은 것_ ‘이보다 최악의 상황이 있을까?’
					<br>5막/ 인간의 그릇_ 결국 사람은 제 그릇만큼의 돈을 모은다
					<br>피날레/ 거슬러 오르기_ 돈, 시간, 정신으로부터 완벽한 자유를 얻다
					<br><br>
					<br>CHAPTER2 역행자 1단계_ 자의식 해체
					<br>자의식이 인간을 망치는 이유
					<br>내가 너무 소중한 사람들
					<br>자의식 해체의 3가지 단계
					<br>인생을 허비하는 특별한 방법
					<br><br>
					<br>CHAPTER3 역행자 2단계_ 정체성 만들기
					<br>내 머리를 포맷할 수 있다면
					<br>정체성 소프트웨어를 설치하기
					<br>사람들은 자기 마음의 상처를 핥기에 여념이 없다
					<br><br>
					<br>CHAPTER4 역행자 3단계_ 유전자 오작동
					<br>뇌는 어떻게 진화했을까
					<br>진화의 목적은 완벽함이 아니라 생존이다
					<br>유전자 오작동을 이기는 역행자의 사고방식
					<br>오작동을 극복하고 30억을 취하다
					<br><br>
					<br>CHAPTER5 역행자 4단계_ 뇌 자동화
					<br>뇌를 복리로 성장시킨다면
					<br>뇌 최적화 1단계_ 22전략
					<br>뇌 최적화 2단계_ 오목 이론
					<br>뇌 최적화 3단계_ 뇌를 증폭시키는 3가지 방법
					<br><br>
					<br>CHAPTER6 역행자 5단계_ 역행자의 지식
					<br>기버 이론_ 역행자는 1을 받으면 2를 준다
					<br>확률 게임_ 역행자는 확률에만 베팅한다
					<br>타이탄의 도구_ 유전자에 각인된 장인 정신을 역행하라
					<br>메타인지_ 주관적인 판단은 순리자들의 전유물이다
					<br>실행력 레벨과 관성
					<br><br>
					<br>CHAPTER7 역행자 6단계_ 경제적 자유를 얻는 구체적 루트
					<br>돈을 버는 근본 원리
					<br>경제적 자유라는 성을 함락시키는 방법
					<br>당신이 직장인이든 백수든 열아홉이든 쉰이든
					<br>경제적 자유를 위한 5가지 공부법
					<br>젊은 부자들은 어떻게 공부했을까
					<br>경제적 자유로 가는 알고리즘 설계
					<br><br>
					<br>CHAPTER8 역행자 7단계_ 역행자의 쳇바퀴
					<br><br>
					<br>에필로그 역행자가 되어 완벽한 자유를 누려라
					<br>참고 나를 역행자로 만들어준 책 리스트
					<br>특별부록 곧바로 돈 버는 무자본 창업 아이템
					</div>
					<br><br>
					<h4>책 속으로</h4>
					<br>
					<div id="bookPreview" name="bookPreview"  style="display: block;">
					<br>
					나는 인생의 공략집이라고 생각한 이 특별한 방법들에 ‘역행자의 7단계 모델’이라는 이름을 붙였다. 이 책엔 내가 겪은 10년의 시행착오를 3년으로 줄일 수 있는 모든 치트키가 담겨 있다. 
					타임머신이 있다면 10년 전 나에게 이 책을 꼭 전해주고 싶을 정도다. 내가 이것들 중 일부라도 알았더라면 그렇게까지 고생하진 않았을 텐데, 멀리 돌아가진 않았을 텐데, 훨씬 더 빨리 자유를 찾았을 텐데 싶다. 
					뭐 어쩔 수 없다. 나 대신 당신이라도 이 책을 읽고 지름길을 밟길 바란다. 행복해지길 바란다. 그게 내가 이 책을 쓴 이유다. _p.15-16
						<div id="bookReview" name="bookReview" style="display: none;">
							<br><br>
							꽤 많은 불행과 가난이 ‘나를 너무 사랑하기 때문에’ 일어난다. 자의식은 인간을 크게 성장시키는 원동력이기도 하면서, 인생을 불행과 가난으로 떨어뜨리는 아주 무서운 것이기도 하다. 
							주위를 둘러보자. 어린 시절 무척 똑똑해 좋은 대학을 갔더라도, 책을 수백 권 읽었더라도, 이상할 정도로 아무것도 이루지 못한 사람들이 있다. 그런 사람들을 가까이서 들여다보면 대부분 자의식에 
							갇혀 답답할 정도로 고집을 부리는 경우다. 그들은 타고난 재능을 더 키우지 못하고 퇴화해버리곤 한다. 주변에서 뭐라고들 할 때마다 대답할 변명거리도 늘 준비되어 있다. 부모가, 시대가, 적성이, 
							취향이, 건강이 맞지 않아서 그렇다고 한다. 모두가 아는 진짜 원인을, 본인은 한사코 외면하고 만다. _p.82
							<br><br>
							<br>‘내가 지금껏 결심을 안 해서 그렇지, 진짜 독하게 한번 마음만 먹으면 뭐든지 할 수 있어!’ 그럴까? 응, 아니다. 예전의 나를 포함한 대다수 인간의 착각이다. 말했듯이 진짜 독한 마음을 
							먹는 경험은 죽음 직전에나 가야 할 수 있는 것이다. 그런데 이렇게 자기가 마음만 먹으면 뭔가를 할 것처럼 착각하는 사람들은 늘 거창한 목표를 세운 후 실패하고는 자의식을 보호하기 위해 방어기제를
							 펼치는 일을 평생 반복한다. _p.117
							<br><br>
							<br>사람들은 하고 싶은 게 생길 때마다 허황된 목표를 세우고 항상 실패한다. 실패 후에는 자의식을 보호하기 위해 변명하기 바쁘고, 남 탓, 환경 탓을 하며 자위를 한다. 이 짓을 죽을 때까지 반복한다. 
							자신이 어떤 존재이며, 어떤 과정을 거쳐서 지금의 결과에 이르게 됐는지, 그 진실을 보려고 하지 않는다. 그저 내 마음의 상처를 핥기에 여념이 없다.
							나는 애초에 잃을 것이 없었다. 그야말로 바닥에 있었기 때문에 대단한 자의식이 없었던 것 같다. 그래서 비교적 쉽게 있는 그대로의 나를 인정할 수 있었다. ‘저는 그냥 게으른 동물이에요.’ 
							그래서 나 스스로 목표를 잡을 때면, 나 자신을 믿는 대신 목표를 이룰 수밖에 없는 환경을 세팅한다. _p.118
							<br><br>
							<br>이 책을 읽은 사람 중 이걸 실천하는 비율은 0.1퍼센트도 안 될 것이고, 1주일에 한두 번 이상 실천하는 비율은 그중 5퍼센트 정도일 것이다. 이래서 인생이 참 쉬운 것이다. 
							아무도 이 쉬운 것을 하지 않기 때문이다. 유전자의 명령과 본능에 사로잡혀서 온갖 핑계를 만들어내며 포기하는 사람이 대다수다. 매일 아침 천근같은 몸을 일으켜 회사에는 나가면서 
							저녁에 책상에 앉아 글 한 줄 쓰는 것은 하지 않는다. 당장의 보상이 없기 때문이라고? 평생에 걸친 복리 저축임을 내가 보여주지 않았나? 자수성가한 수많은 역행자가 그토록 많은 책에서 
							입이 닳도록 말하는데도? 그냥 다 핑계일 뿐이다. 95퍼센트의 사람들은 곧 포기할 것이다. 그게 인간의 본성이기 때문이다. _p.156
							<br><br>
							<br>순리자들은 안 되는 이유에 대해서만 떠든다. 되는 이유보다 안 되는 이유를 찾아야 본인의 자의식을 다치지 않기 때문이다. 그러나 항상 인생을 역행해야 자유를 얻을 수 
							있다는 것을 기억하라. 우리의 타고난 원시 본성은 자유로 가는 길과 반대 방향임을 명심하라. 본성과 유전자의 지배를 받는 순리자들의 부정적인 말에 속지 마라. _p.297
							<br><br>
							<br>대부분의 순리자나 사업 경험이 없는 사람들은 내 이야기에 바로 이런 소리를 한다. “그걸 누가 2만 원이나 주고 시켜요?” 장담컨대 내가 이걸 직접 하면 1주일 안에, 매일 10건 이상 조립 신청을 받을 수 있다. 
							이별 재회 상담 사업을 사람들에게 소개할 때마다 지겹게 듣는 질문이 있다. “이별 상담을 진짜 돈 주고 하는 사람이 있어요?” 안타깝게도 나는 이 사업으로 한 달에 1억 넘게 벌어들인다.
							당신이 세상의 중심이 아니다. 세상엔 정말 다양한 사람들이 다양한 니즈를 갖고 살아가고 있다. 어떤 사업에 대해 이야기를 들었을 때 ‘정말 그런 니즈가 있다고?’ 하는 생각부터 든다면, 자의식 방어가 발동하는 
							건 아닌지 돌아볼 필요가 있다. 대부분의 경우 당신은 그런 니즈 자체를 모르는 것이지, 그런 사업이 안 되는 이유를 정확히 알고 있는 게 아니다. _p.299
						</div>
						<input type='button' id="bookBtn" value='더보기' onclick="BRShow()">
						<br><br>
					</div>
					
					<br><br>
					<h4>출판사 서평</h4>
					
					<div id="PublisherPreview" name="PublisherPreview" style="display: block;">
						★★★★★출간 즉시 베스트셀러 종합 1위★★★★★
						<br><br>
						“내 꿈은 오직 반월공단에 취직해 월 200만 원을 받으며
						<br>원룸에서 게임만 하는 삶이었다.
						<br>그러나 단 하나의 공략집을 발견한 이후
						<br>인생은 즐거운 놀이터가 되었다.”
						<br><br>
						95퍼센트의 인간은 타고난 유전자와 본성의 꼭두각시로 살아간다. 그래서 평생 평범함을 벗어나지 못하고 불행하게 산다. 본성에 따라 결정된 인생을 사는 자, 이들은 ‘순리자’다. 그러나 5퍼센트의 인간은 다르다. 그들은 타고난 유전자와 본성을 역행해 경제적 자유와 행복을 쟁취한다. 이들이 바로 ‘역행자’다.
							<div id="publisherReview" name="publisherReview" style="display: none;">
								<br>저자는 학창 시절, 성적 꼴찌이자 인생 꼴찌 수준으로 좀비처럼 살아갔다. 누구를 질투해본 적도 없다. 너무 큰 격차가 놓여 있을 때, 인간은 질투라는 감정 자체를 느끼지 않는다. 인생에 어떤 희망도 없었으며, 평생 월 200만 원 이상 벌 수 없을 거라 믿었다. 오로지 저자 꿈은 반월공단 공장에 취직한 후, 원룸에서 게임만 하는 삶이었다. 그게 행복이라 믿었다. 실제로 스무 살이 될 때까지, 깨어 있는 내내 게임만 하는 오타쿠로 살았다.
								<br>하지만 이 ‘역행자’라는 개념을 깨달은 이후, 그의 인생은 전혀 다르게 펼쳐진다. 인생에도 공략집이 있다는 걸 깨닫고 치트키들을 활용해 사업을 시작하면서 인생은 혁신적으로 변해갔다. 4년이 지나자 매달 3000만 원이 들어오기 시작했다. 그 후 더 많은 경험치를 쌓아 30대 초반이 되었을 때는 아무 일을 하지 않아도 월 1억씩 버는 자동 수익이 완성됐다. 다시 몇 년이 지난 지금, 저자는 ‘이보다 행복할 수 있을까?’라는 생각을 하며 매일 아침을 맞이하고 있다.
								<br>비판론자들은 『역행자』와 같은 책을 보고 이렇게 말한다. “부자 되는 방법을 알려준다는 책을 보면 구체적인 방법론은 나오지 않는다.” 물론 그러하다. 어떤 베스트셀러를 보더라도 방법론은 나오지 않는다. 그래서 『역행자』에서는 돈을 버는 마인드를 갖는 이론부터 구체적으로 돈 버는 방법과 흐름까지 모두 소개한다. 책에는 “자의식 해체의 3가지 단계”, “정체성 소프트웨어를 설치하기”, “유전자 오작동을 이기는 역행자의 사고방식”, “뇌 최적화 1, 2, 3단계”, “기버 이론, 확률 거임, 타이탄의 도구, 메타인지 등의 개념이 정리된 역행자의 지식”, “돈을 버는 근본 원리”, “경제적 자유를 얻는 구체적 루트”, “나를 역행자로 만들어준 책 리스트”, “곧바로 돈 버는 무자본 창업 아이템” 등의 내용으로 빼곡히 채워져 있다.
								<br><br>
								“월 1000만 원 자동 수익을 얻는 방법은 간단하다!
								<br>부디 당신의 자의식이 이 책을 걷어차지 않기를!”
								<br>운명과 본능의 지배에서 벗어나
								<br>경제적 자유와 행복한 인생을 쟁취하는 라이프해킹의 비밀
								<br><br>
								<br>세상에는 성공할 수 있는 공략집이 분명히 존재한다. 이를 믿는다면 당신은 그저 순서대로만 움직이면 된다. 분명히 말할 수 있는 점은, 이 책을 통해 수천억 자산가가 되는 법은 알려줄 수 없겠지만 자유를 얻는 법에 대한 힌트를 전달할 자신이 있다는 것이다. 저자는 인생의 공략집이라고 생각한 이 특별한 방법들에 ‘역행자의 7단계 모델’이라는 이름을 붙였다.
								<br><br>
								1단계 〈자의식 해체〉 대부분의 사람들이 인생에서 완전한 자유를 얻지 못하는 이유는 과잉 자의식 때문이다. 아무리 성공한 사람이 옆에 있어도, 아무리 좋은 책을 눈앞에 두어도, 방법을 떠먹여줘도 소용없다. 대다수는 자의식을 보호하기 위해 온갖 방어기제로 일생일대의 정보를 쳐낸다. 자의식을 해체하지 않는 이상 그 어떤 발전도 할 수 없다. 열등감을 버리고 자신의 상황을 인정할 때 변화가 시작된다.
								<br><br>
								2단계 〈정체성 만들기〉 결정적 사건들은 인생을 바꾸는 계기가 되곤 한다. 극한의 불행을 역전의 계기로 바꿔낸 역행자들은 그래서 드라마틱한 스토리를 갖고 있을 때가 많다. 그렇다면 자수성가한 사람들이 겪는 엄청난 사건, 정체성을 바꾸는 사건을 인위적으로 만들어낼 수 있다면 어떨까? 0.1퍼센트만이 겪는 대사건을 만들어낼 수 있다면 자신의 정체성을 드라마틱하게 바꿀 수 있지 않을까? 저자는 그것이 가능하다고 생각하고, 이것을 ‘정체성 만들기’라고 말한다.
								<br><br>
								3단계 〈유전자 오작동〉 유튜브 열풍이 불면서 “나도 이제 유튜브 하려고”라고 말하는 사람 100명 중 정말 시작하는 건 3명이 될까 말까다. 왜 사람들은 결심만 하고 실행을 못 할까? 조심성 강한 유전자는 과거에는 꼭 필요한 것이었지만 오늘날엔 열등한 것, 즉 클루지로 남았다. 그리하여 오늘날에는 아무것도 하지 않는 것이 ‘자유 박탈’이라는 결과를 낳는다. 일평생 인생을 장악할 수도 없이 돈과 시간으로부터 속박되어 살아가는 것이다. 이러한 유전자 오작동을 의식적으로 이겨내야 지금까지와는 다른 성공을 일굴 수 있다.
								<br><br>
								4단계 〈뇌 자동화〉 권투 선수가 운동을 해둬서 ‘신체 최적화’를 이뤄내면 그것으로 평생 돈을 벌며 살듯이, 인간 또한 한번 뇌를 최적화해두면 일평생 앞서나갈 수 있게 된다. 최적화를 해둔 뇌는 날로 뇌가 업그레이드되며 나이를 먹을수록 오히려 더 강력해진다. 나아가 뇌를 최적화해두면 아무 일을 하지 않아도 자동으로 돈을 벌어들이는 ‘자동 수익’에 이를 수 있다. 이번 단계는 이러한 ‘뇌 최적화 방법’에 대해 소개한다.
								<br><br>
								5단계 〈역행자의 지식〉 본성을 역행하는 지식을 알고 있다면, 순리자와는 다른 삶을 살 수밖에 없다. 저자 또한 역행자의 지식을 통해 하루하루 차이를 만들어냈고, 최악의 인생에서 ‘완전한 자유를 얻은 인생’으로 탈바꿈할 수 있었다. 물론 역행자가 된다고 해서 하루아침에 자유를 얻는 일은 없을 것이다. 1년 만에 자유를 얻을 확률도 극히 낮을 것이다. 하지만 3년, 5년, 10년 후면, 일반인과 현격한 차이를 갖게 될 것이다.
								<br><br>
								6단계 〈경제적 자유를 얻는 구체적 루트〉 돈 버는 일은 엄청 복잡하고 어려워 보이지만 원리는 간단하다. 돈을 버는 모든 활동은 다음 두 가지로 수렴된다. “상대를 편하게 해주기” 혹은 “상대를 행복하게 해주기.” 겨우 이게 돈 버는 근본 원리라니까 허탈한가? 그렇지 않다. 이 2가지야말로 사업과 투자의 시작이자 끝이다. 이번 단계에서는 구체적으로 경제적 자유를 얻는 공식을 제안할 생각이다. 당신이 대기업 임원이든, 무스펙 노동자든, 백수든 상관없다. 모든 경우의 수를 고려하여 ‘경제적 자유에 이르는 테크트리’를 알려줄 것이다.
								<br><br>
								7단계 〈역행자의 쳇바퀴〉 단 한 경기도 패배하지 않은 테니스 선수는 없다. 한 번도 패배하지 않은 축구 선수는 없다. 세계 최고의 운동 선수들은 수천 번의 패배 속에서 성장을 반복한다. 그리고 전성기를 얻는다. 패배를 반복함으로써 운동 선수는 ‘세계 최고’라는 타이틀을 얻게 된다. 역행자 모델에 따라 실패를 반복하면서 일반인은 ‘자유’라는 타이틀을 얻게 된다. 사실 인생이라는 게임도 별반 다르지 않다. ‘그다음 목표’는 지금까지 상대해왔던 적들보다 수준이 높을 수밖에 없기 때문이다. 실패를 해야만 ‘레벨업’ 버튼을 누를 수 있다.
								<br><br>
								죽어라 노력하지만 영원히 자유를 얻지 못하는 사람들이 있다. 이들을 가만히 보면 7단계 중 특정 단계에만 몰입해 있거나, 몇 단계를 건너뛰는 문제를 갖고 있다. 그래서 열심히는 살지만 자의식의 방해를 받아 ‘돈 버는 법’ 자체에 심한 거부감을 갖고 있거나(1단계), ‘내 한계는 여기까지야’라는 정체성에 매몰되어 자신의 몫만큼만 일을 한다(2단계). 혹은 유전자와 본성의 휘둘려 이성적인 판단을 하지 못하거나(3단계), 뇌가 더는 발달하지 못해 새로운 정보를 처리하지 못한다(4단계). 확률 게임 대신 ‘잃는 게임’을 반복하거나(5단계), 5단계까지 알고 있지만 구체적으로 경제적 자유를 얻는 루트를 알지 못할 수도 있다(6단계).
								<br>대부분의 사람들은 무조건 노력만 할 뿐 노력들의 연쇄 작용을 모르기 때문에 엉뚱한 데에 힘을 쏟다가 지쳐 포기한다. 혹은 “돈은 인생에서 별로 중요한 게 아니야” 같은 합리화를 하며 원래 있던 곳으로 후퇴한다. 그보다는 영리한 노력이 있어야 한다. 저자는 수많은 시행착오와 반성을 통해 이 노력들에 일정한 패턴과 배열이 있어야 한다는 걸 알아냈다. 그리고 첫 책 『역행자』에서 이러한 비밀을 제대로 공개한다. 자, 놀면서 자유를 얻을 준비가 되었나? 이제는 시작해보자.
							</div>
						<input type='button' id="publisherBtn" name="publisherBtn" value='더보기' onclick="PRShow();">
						<br><br>
					</div>
					
				</div>
				<div class="tab-pane fade" id="writer" role="tabpanel" aria-labelledby="writer-tab">
					<div class= "writer image" style="float: left; padding: 30px; padding-top: 0px">
					<img alt="" src="/resources/images/w1.png">
					</div>
					<p style="font-size: large; font-weight: bolder;">저자: 자청</p>
					<a class="active" href="#"><span>분야</span> : 자기계발작가, 경영인, 사업가 </a>
					<p>‘무자본 창업가’로 유명해진 저자는 2019년, 20편의 영상으로 10만 구독자를 넘어서며 화제를 모은 후 미련 없이 유튜브 〈라이프해커 자청〉을 그만뒀다.
					이후 본업인 온라인 마케팅 비즈니스를 비롯해 다방면으로 사업을 확장했다. 대표적으로 ‘이상한마케팅’, ‘프드프’, ‘아트라상’, ‘큐어릴’부터 지분 투자로 참여한 ‘라이프해킹스쿨’, ‘유튜디오’, 오프라인 사업으로 ‘욕망의북카페’, ‘인피니’ 등이 있다.
					이미 30대 초반 무렵에 어떤 일을 하지 않아도 월 1억씩 버는 자동 수익을 완성했으며, 소유한 자산으로 매년 20퍼센트 이상의 투자 수익률을 올리며 경제적 자유를 실현했다.
					<br><br>
					그러나 10대 때의 저자는 외모, 돈, 공부, 어떤 점에서도 최하위였다. 그러던 스무 살 무렵, ‘인생에도 게임처럼 공략집이 있다’는 사실을 깨달으면서 삶이 180도 바뀌기 시작한다.
					200여 권의 책을 독파하며 얻은 치트키들을 활용해 창업에 연이어 성공한 것이다. 저자가 성공한 비즈니스 모델은 ‘초보가 왕초보를 가르치는 것’이다. 어느 분야든 저렴한 가격으로 도움을 받고 싶은 왕초보의 수요는 분명히 존재한다.
					이들에겐 기본만 알아도 일의 진척을 도울 수 있다. 이에 착안해 저자는 여러 비즈니스를 설계했다.
					공통점은 투자비용 자체가 들어가지 않는 ‘무자본 창업’, 그리고 일하지 않아도 돈이 들어오는 ‘자동화 수익’이다. 어느새 유튜버 ‘라이프해커 자청’이라는 캐릭터와 ‘무자본 창업’이라는 개념은 사람들의 고정관념을 깨는 상징이 됐다.
					2022년 현재, 저자는 ‘이상한마케팅’, ‘프드프’, ‘아트라상’ 등의 회사를 비롯해 총 6개의 사업과 4개의 지분 투자 사업으로 자동 수익을 만들어내고 있으며, 약 130명의 직원들과 함께 재미난 일들을 벌이고 있다.</p>
				</div>
				
				<!-- <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>ISBN</h5>
									</td>
									<td>
										<h5>9788901260716(8901260719)</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>쪽수</h5>
									</td>
									<td>
										<h5>314쪽</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>크기</h5>
									</td>
									<td>
										<h5>143 * 195 * 26 mm /564g</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Weight</h5>
									</td>
									<td>
										<h5>52gm</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Quality checking</h5>
									</td>
									<td>
										<h5>yes</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Freshness Duration</h5>
									</td>
									<td>
										<h5>03days</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>When packeting</h5>
									</td>
									<td>
										<h5>Without touch of hand</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>Each Box contains</h5>
									</td>
									<td>
										<h5>60pcs</h5>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div> -->
				<!-- <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="comment_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item reply">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>Post a comment</h4>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="Your Full name">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="number" name="number" placeholder="Phone Number">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="Message"></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="btn primary-btn">Submit Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div> -->
				<div class="tab-pane fade" id="bookMemberReview" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>평점</h5>
										<h4>4.0</h4>
										<h6>리뷰(03)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>리뷰 3 개 기준</h3>
										<ul class="list">
											<li><a href="#">5점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 1</a></li>
											<li><a href="#">4점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 1</a></li>
											<li><a href="#">3점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 1</a></li>
											<li><a href="#">2점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 0</a></li>
											<li><a href="#">1점 <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 0</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>share</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>미묘하네요.</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>goldwish</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>흥미롭네요.</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>kara</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>잘봤습니다.</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>리뷰 쓰기</h4>
								<p>평점 :</p>
								<ul class="list">
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</ul>
								<p></p>
								<!-- <form class="row contact_form" action="contact_process.php" method="post" id="memberReviewcontactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="memberReviewName" name="memberReviewName" placeholder="이름" onfocus="this.placeholder = ''" onblur="this.placeholder = '이름'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="memberReviewEmail" name="memberReviewEmail" placeholder="이메일" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="memberReviewNumber" name="memberReviewNumber" placeholder="전화번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '전화번호'">
										</div>
									</div> -->
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="memberReviewMessage" id="memberReviewMessage" rows="1" placeholder="리뷰 적기" onfocus="this.placeholder = ''" onblur="this.placeholder = '리뷰 적기'"></textarea></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="primary-btn">등록하기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->
	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>베스트셀러</h1>
							<p>몇주간 가장 인기 있었던 책들을 모아놓은 곳입니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<a href="bookView.html">
								<img class="img-fluid" src="/resources/images/product/pb1.png" alt="">
							</a>
							<div class="product-details">
								<h6>역행자</h6>
								<div class="price">
									<h6>₩15,750</h6>
									<h6 class="l-through">₩17,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="bookView.html" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="/resources/book/bookView.html" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb2.png" alt="">
							<div class="product-details">
								<h6>헤어질 결심 각본</h6>
								<div class="price">
									<h6>₩13,500</h6>
									<h6 class="l-through">₩15,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb3.png" alt="">
							<div class="product-details">
								<h6>세상의 마지막 기차역</h6>
								<div class="price">
									<h6>₩12,600</h6>
									<h6 class="l-through">₩14,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/pb4.png" alt="">
							<div class="product-details">
								<h6>호감 가는 말투에는 비밀이 있다</h6>
								<div class="price">
									<h6>₩15,120</h6>
									<h6 class="l-through">₩16,800</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>화제의 신간</h1>
							<p>최근 가장 핫한 신간들을 모아놨습니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib1.png" alt="">
							<div class="product-details">
								<h6>비비안 마이어</h6>
								<div class="price">
									<h6>₩28,800</h6>
									<h6 class="l-through">₩32,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib2.png" alt="">
							<div class="product-details">
								<h6>세 번째 위기, 세 번째 기회</h6>
								<div class="price">
									<h6>₩16,200</h6>
									<h6 class="l-through">₩18,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib3.png" alt="">
							<div class="product-details">
								<h6>파칭코 1</h6>
								<div class="price">
									<h6>₩14,220</h6>
									<h6 class="l-through">₩15,800</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- single product -->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="/resources/images/product/ib4.png" alt="">
							<div class="product-details">
								<h6>때로는 행복 대신 불행을 택하기도 한다</h6>
								<div class="price">
									<h6>₩14,400</h6>
									<h6 class="l-through">₩16,000</h6>
								</div>
								<div class="prd-bottom">

									<a href="" class="social-info">
										<span class="ti-bag"></span>
										<p class="hover-text">구매하기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-heart"></span>
										<p class="hover-text">관심상품</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-sync"></span>
										<p class="hover-text">리스트가기</p>
									</a>
									<a href="" class="social-info">
										<span class="lnr lnr-move"></span>
										<p class="hover-text">상세보기</p>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->
	<!-- Start related-product Area -->
	<!-- <section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
							magna aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank">
							<img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section> -->
	<!-- End related-product Area -->

	<!-- start footer Area -->
	<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Me</h6>
						<p>
							이 사이트는 교보문고 사이트에 기반해서 제작되었으며 karma 템플릿을 이용했다는것을 명시합니다.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>저희들의 최신 정보를 보내드립니다.</p>
						<div class="" id="mc_embed_signup">

							<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get" class="form-inline">

								<div class="d-flex flex-row">

									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
									 required="" type="email">


									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
								</div>
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget mail-chimp">
						<h6 class="mb-20">Retouch by J</h6>
						<ul class="instafeed d-flex flex-wrap">
							<li><img src="/resources/images/footer/fi1.png" alt=""></li>
							<li><img src="/resources/images/footer/fi2.png" alt=""></li>
							<li><img src="/resources/images/footer/fi3.png" alt=""></li>
							<li><img src="/resources/images/footer/fi4.png" alt=""></li>
							<li><img src="/resources/images/footer/fi5.png" alt=""></li>
							<li><img src="/resources/images/footer/fi6.png" alt=""></li>
							<li><img src="/resources/images/footer/fi7.png" alt=""></li>
							<li><img src="/resources/images/footer/fi8.png" alt=""></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>SNS를 팔로우 해보세요</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-dribbble"></i></a>
							<a href="#"><i class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
				<p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> retouch by JHJ
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->
	
	<script type="text/javascript">
		function DIShow() {
			  var DIdiv = document.getElementById("detailImages");
			  var DIbtn = document.getElementById("DIBtn");
			  
			  if(DIdiv.style.display == "none")  {
			    DIdiv.style.display = "block";
			    DIbtn.value = '닫기';
			  } else {
			    DIdiv.style.display = "none";
			    DIbtn.value = '더보기';
			  }
			}
		function BRShow() {
		  var BRdiv = document.getElementById("bookReview");
		  var Bbtn = document.getElementById("bookBtn");
		  
		  if(BRdiv.style.display == "none")  {
		    BRdiv.style.display = "block";
		    Bbtn.value = '닫기';
		  } else {
		    BRdiv.style.display = "none";
		    Bbtn.value = '더보기';
		  }
		} 
		function PRShow() {
			var PRdiv = document.getElementById("publisherReview");
			var Pbtn = document.getElementById("publisherBtn");
			
			if(PRdiv.style.display == "none")  {
				  PRdiv.style.display = "block";
				  Pbtn.value = "닫기";
			} else {
				  PRdiv.style.display = "none";
				  Pbtn.value = "더보기";
			}
		} 
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