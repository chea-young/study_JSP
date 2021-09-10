<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>페이지 오류</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

</head>
<body>
	<jsp:include page="menu.jsp" />
	<!-- 점보트론은 대형전광판이라는 의미를 지니고 있다.점보트론 안에는 다양한 컴포넌트(텍스트,이미지,회사로고 등)가 포함이 가능하다. -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
		</div>
	</div>
	<div class = "container">
		<p><%= request.getRequestURL() %></p>
		<p><a href = "products.jsp" class="btn btn-secondary" >상품 목록&raquo;</a></p>
		
	</div>
	
</body>
</html>