<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository"
	scope="session" />
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>

	<div class="container">
		<form name="newproduct" action="./processAddProduct.jsp"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2"><b>상품 코드 </b></label>
				<div class="col=sm-3">
					<input type="text" name="productId" class="form-control"
						placeholder="상품코드를 입력하세요.">

				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>상품 명 </b></label>
				<div class="col=sm-3">
					<input type="text" name="name" class="form-control"
						placeholder="상품명를 입력하세요.">

				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>상품 가격 </b></label>
				<div class="col=sm-3">
					<input type="text" name="unitPrice" class="form-control"
						placeholder="상품 가격를 입력하세요.">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>상세 정보 </b></label>
				<div class="col=sm-5">
					<textarea name="description" rows="2" cols"50" class="form-control"
						placeholder="상세 정보를를 입력하세요."></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>제조사 </b></label>
				<div class="col=sm-3">
					<input type="text" name="manufacturer" class="form-control"
						placeholder="제조사를 입력하세요.">

				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>분류 </b></label>
				<div class="col=sm-3">
					<input type="text" name="category" class="form-control"
						placeholder="분류를 입력하세요.">

				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>재고 수 </b></label>
				<div class="col=sm-3">
					<input type="text" name="unitInStock" class="form-control"
						placeholder="재고 수를 입력하세요.">

				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2"><b>상태</b></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New">신규 제품 <input
						type="radio" name="condition" value="Old">중고 제품 <input
						type="radio" name="condition" value="Refurbished">재생 제품
				</div>
			</div>

			<div class="form-group row">
				<!-- offset지정은 col의 2만큼 띄워라 -->
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>

		</form>
	</div>


</body>
</html>