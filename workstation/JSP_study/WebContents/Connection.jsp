<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> DB 연결 테스트</title>
</head>
<body>
	<% 
		Connection connection = null;
		String url = "jdbc:mysql://localhost:3306/testdb";
		String id = "root";
		String pw = "1234";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			Class.forName(driver);  
			connection = DriverManager.getConnection(url, id, pw);
			out.println("데이터베이스 연결성공");
		}catch(Exception e) {
			out.println("데이터 연결 실패.(<br/>)");
			out.println(e.getMessage());
			e.printStackTrace(); //콘솔에 출력
		}finally{
			if(connection !=null){
				connection.close();
			}
		}
		
		
	
	%>

</body>
</html>