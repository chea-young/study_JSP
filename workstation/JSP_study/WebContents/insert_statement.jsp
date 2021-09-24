<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력값 DB저장하기</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>
	<!-- 접속할 DB코드를 페이지 지시자 태그로 가져옴 -->
	<%-- <jsp:include page="dbconn.jsp" /> --%>
	<%
		request.setCharacterEncoding("UTF-8");
	
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String username = request.getParameter("username");
		
		Statement stmt = null;
		
		try{
			
			String sql = 
			  "insert into members(id,pw,username) values('"+id+"','"+pw+"','"+username+"')";
			
			stmt = connection.createStatement();
			
			stmt.executeUpdate(sql);
			out.println("members테이블에 정상적으로 삽입 성공되었습니다.");			
		}catch(SQLException e){
			out.println("members테이블에 삽입 실패되었습니다.");
			out.println("SQLException : " + e.getMessage());
			e.printStackTrace();
		}finally {
			
			if(stmt != null) 
				stmt.close();
			if(connection != null) 
				connection.close();
		}	
	%>
	
	</br>
	<a href="select_statement.jsp">회원 조회하기</a>

</body>
</html>