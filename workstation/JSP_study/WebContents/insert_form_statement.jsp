<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert 실습</title>
</head>
<body>
	<h2>사용자 입력값 DB 저장하기</h2>
	<form action="insert_statement.jsp" method="post">
		<p>
			아이디: <input type="text" name="id" />
		</p>
		<p>
			비밀번호: <input type="password" name="pw" />
		</p>
		<p>
			이름: <input type="text" name="username" />
		</p>
		<p>
			<input type="submit" value="전송" />
		</p>

	</form>

</body>
</html>