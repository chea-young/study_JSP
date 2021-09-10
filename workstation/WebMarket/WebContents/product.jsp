<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@page import="java.util.ArrayList"%>
<%@page errorPage="exceptionNoProdectId.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session"/> --%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>

	<%
	String id = request.getParameter("id");
	ProductRepository dao = ProductRepository.getInstance();
	Product product = dao.getProductById(id);
	%>

	<div class="container">
		<div class="row">
			<!-- 이미지 추가 -->
			<div class="col-md-5">
				<img src="c:/upload/<%= product.getFilename() %>"
					style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3>
					<%=product.getPname()%>
				</h3>
				<p>
					<%=product.getDescription()%>
				</p>
				<p>
					<b> 상품 코드: </b> <span class="badge badge-danger"><%=product.getProductId()%></span>
				</p>
				<p>
					<b> 제조사: </b> <span class="badge badge-primary"><%=product.getManufacturer()%></span>
				</p>
				<p>
					<b> 분류: </b> <span class="badge badge-secondary"><%=product.getCategory()%></span>
				</p>
				<p>
					<b> 재고 수: </b> <span class="badge badge-success"><%=product.getUnitsInStock()%></span>
				</p>
				<h4><%=product.getUnitPrice()%>
					원
				</h4>

				<p>
					<a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a
						href="./products.jsp" class="btn btn-secondary"> 상품 목록&raquo;</a>
				</p>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>