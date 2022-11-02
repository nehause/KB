<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="col-lg-2">
	<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
		<ul class="list-unstyled ps-0">
			<li class="mb-1"> 
				<button class="btn btn-toggle align-items-center rounded collapsed" aria-expanded="false"  onclick="location.href='/codeGroup/codeGroupList'">
					코드그룹 관리
				</button>
				<!-- <div class="collapse show" id="codeGroup-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">코드그룹 리스트</a></li>
						<li><a href="#" class="link-dark rounded">코드그룹 추가</a></li>
						<li><a href="#" class="link-dark rounded">코드그룹 수정</a></li>
					</ul>
				</div> -->
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed" aria-expanded="false" onclick="location.href='/code/codeList'">
					코드 관리
				</button>
				<!-- <div class="collapse show" id="code-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">코드 리스트</a></li>
						<li><a href="#" class="link-dark rounded">코드 추가</a></li>
						<li><a href="#" class="link-dark rounded">코드 수정</a></li>
					</ul>
				</div> -->
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed" aria-expanded="false"  onclick="location.href='/member/memberList'">
					회원 관리
				</button>
				<!-- <div class="collapse" id="member-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">회원 리스트</a></li>
						<li><a href="#" class="link-dark rounded">회원 추가</a></li>
						<li><a href="#" class="link-dark rounded">회원 수정</a></li>
					</ul>
				</div> -->
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"  onclick="location.href='/book/bookList'" aria-expanded="false">
					책 관리
				</button>
				<!-- <div class="collapse" id="book-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">책 리스트</a></li>
						<li><a href="#" class="link-dark rounded">책 추가</a></li>
						<li><a href="#" class="link-dark rounded">책 수정</a></li>
					</ul>
				</div> -->
			</li>
			<li class="mb-1">
				<!-- <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#writer-collapse" aria-expanded="false">
					작가 관리
				</button> -->
				<button class="btn btn-toggle align-items-center rounded collapsed"  onclick="location.href='/writer/writerList'" aria-expanded="false">
					작가 관리
				</button>
				<!-- <div class="collapse" id="writer-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">작가 리스트</a></li>
						<li><a href="#" class="link-dark rounded">작가 추가</a></li>
						<li><a href="#" class="link-dark rounded">작가 수정</a></li>
					</ul>
				</div> -->
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle align-items-center rounded collapsed"  onclick="location.href='/order/orderList'" aria-expanded="false">
					주문 관리
				</button>
				<!-- <div class="collapse" id="order-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li><a href="#" class="link-dark rounded">주문 리스트</a></li>
						<li><a href="#" class="link-dark rounded">주문 추가</a></li>
						<li><a href="#" class="link-dark rounded">주문 수정</a></li>
					</ul>
				</div> -->
			</li>
		</ul>
	</div>
</div>