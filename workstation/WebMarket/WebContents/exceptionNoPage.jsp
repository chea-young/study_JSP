<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ����</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />

</head>
<body>
	<jsp:include page="menu.jsp" />
	<!-- ����Ʈ���� �����������̶�� �ǹ̸� ���ϰ� �ִ�.����Ʈ�� �ȿ��� �پ��� ������Ʈ(�ؽ�Ʈ,�̹���,ȸ��ΰ� ��)�� ������ �����ϴ�. -->
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">��û�Ͻ� �������� ã�� �� �����ϴ�.</h2>
		</div>
	</div>
	<div class = "container">
		<p><%= request.getRequestURL() %></p>
		<p><a href = "products.jsp" class="btn btn-secondary" >��ǰ ���&raquo;</a></p>
		
	</div>
	
</body>
</html>