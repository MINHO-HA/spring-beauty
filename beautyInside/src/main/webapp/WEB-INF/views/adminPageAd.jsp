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
					<a href="/beauty/adminPage/dashboard" class="list-group-item ">대쉬보드</a>
					<a href="/beauty/adminPage/member" class="list-group-item">회원관리</a>
					<a href="/beauty/adminPage/item" class="list-group-item">제품관리</a>
					<a href="/beauty/adminPage/tip" class="list-group-item">팁관리</a>
					<a href="/beauty/adminPage/review" class="list-group-item">리뷰관리</a>
					<a href="/beauty/adminPage/ads" class="list-group-item active">광고관리</a>
				</div>
			</div>

			<!-- 관리자 페이지 우측 메뉴 -->
			<div class="col-md-9">
				<div class="p-4 bg-white rounded shadow-sm">
					<div class="container" >
					<table class="table table-striped table-bordered table-hover table-condensed">
						<tr>
							<th>광고 번호</th>
							<th>광고 제목</th>
							<th>광고 사진</th>
							<th>광고 제품</th>
						</tr>
						
						<c:forEach var="allTips" items="${allTips}">
						<tr>
							<td>${allTips.TIP_TITLE}</td>
							
							<td><img src="${allTips.TIP_THUMBNAIL}" style="height: 80px; width: 80px;"></td>
							
							<td><a href="${allTips.TIP_URL}">팁 링크</a></td>
							
							<td>
								<c:choose>
									<c:when test="${allTips.AGE_ID >= 1 and allTips.AGE_ID < 2}">
										10대 
									</c:when>
									<c:when test="${allTips.AGE_ID >= 2 and allTips.AGE_ID < 3}">
										20대 
									</c:when>
									<c:when test="${allTips.AGE_ID >= 3 and allTips.AGE_ID < 4}">
										30대 
									</c:when>
									<c:when test="${allTips.AGE_ID >= 4 and allTips.AGE_ID < 5}">
										40대 
									</c:when>
									<c:otherwise>
										50대 이상
									</c:otherwise>		
								</c:choose>
							</td>
							
							<td>
								<c:choose>
									<c:when test="${allTips.SKINTYPE_ID == 1 }">
										악건성
									</c:when>
									<c:when test="${allTips.SKINTYPE_ID == 2 }">
										건성
									</c:when>
									<c:when test="${allTips.SKINTYPE_ID == 3 }">
										중성
									</c:when>
									<c:when test="${allTips.SKINTYPE_ID == 4 }">
										지성
									</c:when>
									<c:when test="${allTips.SKINTYPE_ID == 5 }">
										악지성
									</c:when>
									<c:when test="${allTips.SKINTYPE_ID == 6 }">
										민강성
									</c:when>
								</c:choose>			
							</td>
							
							<td>
									<c:choose>
										<c:when test="${allTips.GENDER_ID == 1 }">
											남 
										</c:when>
										<c:when test="${allTips.GENDER_ID == 2 }">
											여
										</c:when>
									</c:choose>
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