<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���Ͼ��ε�(cos.jar�̿�)</title>
</head>
<body>
	<form action="fileupload_cos_1_process.jsp" name="fileForm"
		method="post" enctype="multipart/form-data">
		<p><b>�̸�: </b> <input type="text" name ="name"/></p>
		<p><b>����: </b> <input type="text" name ="title"/></p>
		<p><b>����: </b> <input type="file" name ="filename"/></p>
		<p><input type="submit" value="File upload"/> </p>
		</form>
		
</body>
</html>