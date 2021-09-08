<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>

<%
	Connection connection = null;
	String url = "jdbc:mysql://localhost:3306/testdb";
	String id = "root";
	String pw = "1234";
	String driver = "com.mysql.jdbc.Driver";
	
	Class.forName(driver);  
	connection = DriverManager.getConnection(url, id, pw);


%>
