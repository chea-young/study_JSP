<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DBCP 테스트</title>
</head>
<body>
	<%
		Context context = new InitialContext();
	    DataSource dataSource = (DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn");
		Connection conn = dataSource.getConnection();
		System.out.println("DBCP 연동완료");
		System.out.println("Connection 객체" + conn.toString());
		out.println("Connection객체 : " + conn.toString());
		out.println("스레드명 : " + Thread.currentThread().getName());

	%>

</body>
</html>