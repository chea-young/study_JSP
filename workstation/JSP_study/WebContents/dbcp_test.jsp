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
<title>DBCP �׽�Ʈ</title>
</head>
<body>
	<%
		Context context = new InitialContext();
	    DataSource dataSource = (DataSource)context.lookup("java:comp/env/" + "jdbc/dbconn");
		Connection conn = dataSource.getConnection();
		System.out.println("DBCP �����Ϸ�");
		System.out.println("Connection ��ü" + conn.toString());
		out.println("Connection��ü : " + conn.toString());
		out.println("������� : " + Thread.currentThread().getName());

	%>

</body>
</html>