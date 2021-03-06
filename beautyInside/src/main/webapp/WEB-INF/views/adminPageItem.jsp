<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

	<title>:: Beauty Inside ::</title>

<title>:: Beauty Inside ::</title>
<style>
</style>
</head>
<body class="bg-light">
	<!-- 상단바 -->
	<%@include file="navbar.jsp" %>
	
	<!-- 관리자 페이지 -->
	<div class="container mt-3">
		<div class="row">
			<!-- 관리자 페이지 좌측 메뉴 -->
			<div class="col-md-3">
				<div class="list-group">
					<a href="/beauty/adminPage/dashboard" class="list-group-item">대쉬보드</a>
					<a href="/beauty/adminPage/member" class="list-group-item">회원관리</a>
					<a href="/beauty/adminPage/item" class="list-group-item active">제품관리</a>
					<a href="/beauty/adminPage/tip" class="list-group-item">팁관리</a>
					<a href="/beauty/adminPage/review" class="list-group-item">리뷰관리</a>
					<a href="/beauty/adminPage/ads" class="list-group-item">광고관리</a>
				</div>
			</div>
			<!-- 관리자 페이지 우측 메뉴 -->
			<div class="col-md-9">
				<div class="p-4 bg-white rounded shadow-sm">
					<div class="container" >
					<input type="button" style="float: right;" class="btn btn-success" onclick="location.href='/beauty/adminPage/itemWrite'" value="제품 등록"><br><br>
					<table class="table table-striped table-bordered table-hover table-condensed">
						<tr>
							<th>카테고리</th>
							<th>이미지</th>
							<th>제품명</th>
							<th>별점</th>
							<th>브랜드</th>
							<th>수정 삭제 여부</th>
						</tr>
						<c:forEach var="allItems" items="${allItems}">
						<tr>
							<td>${allItems.ITEM_CATEGORY}</td>
							<td><img src="${allItems.ITEM_IMAGE}" style="width: 80px; height: 80px;"></td>
							<td>${allItems.ITEM_NAME}</td>
							<td>리뷰처리필요!(item 테이블 말고 review테이블로 접근)</td>
							<td>${allItems.ITEM_BRAND}</td>
							<td>
							<input type="button" class="btn btn-primary" onclick="location.href='/beauty/adminPage/itemModify/${allItems.ITEM_ID}'" value="제품 수정">
							<input type="button" class="btn btn-danger" onclick="location.href='/beauty/adminPage/itemDelete/${allItems.ITEM_ID}'" value="제품 삭제">
							</td>
						</tr>
						</c:forEach>
					</table>
					</div>
				</div>
			</div>
		
		</div>
	</div>
	
	<!-- 하단 -->
	<%@include file="footer.jsp" %>
	
	<script type="text/javascript">
	
	</script>
</body>
</html>