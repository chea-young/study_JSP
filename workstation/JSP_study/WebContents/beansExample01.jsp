<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="student" class="sec01_exam.Student" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈 예제-1</title>
</head>
<body>
	<h1>빈에 데이터 값들을 저장하였습니다.</h1><br/>
		이름 : <jsp:getProperty property="name" 		name="student" /><br/>
		나이 : <jsp:getProperty property="age" 		name="student" /><br/>
		학년 : <jsp:getProperty property="grade"		name="student" /><br/>
		번호 : <jsp:getProperty property="studentNum" name="student" /><br/>		
	</font>	

	<jsp:setProperty property="name"       name="student" value="신은혁" />
	<jsp:setProperty property="age"        name="student" value="13" />
	<jsp:setProperty property="grade" 	   name="student" value="6" />
	<jsp:setProperty property="studentNum" name="student" value="15" />
	
	<h1>빈에서 데이터 가져온 값입니다.</h1><br/>
	<font size="10" color="blue">

		이름 : <jsp:getProperty property="name" 		name="student" /><br/>
		나이 : <jsp:getProperty property="age" 		name="student" /><br/>
		학년 : <jsp:getProperty property="grade"		name="student" /><br/>
		번호 : <jsp:getProperty property="studentNum" name="student" /><br/>		
	</font>	
</body>
</html>