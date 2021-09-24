<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파일업로드(cos.jar이용)</title>
</head>
<body>
	<form action="fileupload_cos_1_process.jsp" name="fileForm"
		method="post" enctype="multipart/form-data">
		<p><b>이름: </b> <input type="text" name ="name"/></p>
		<p><b>제목: </b> <input type="text" name ="title"/></p>
		<p><b>파일: </b> <input type="file" name ="filename"/></p>
		<p><input type="submit" value="File upload"/> </p>
		</form>
		
</body>
</html>