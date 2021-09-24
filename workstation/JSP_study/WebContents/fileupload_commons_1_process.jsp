<%@page import="java.io.File"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드(commons)</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		//업로드를 할 서버의 경로를 지정함
		String fileUploadPath = "C:\\upload";
		
		DiskFileUpload upload = new DiskFileUpload();
		//요청된 파라메터를 전달받기위해서 parseRequest()호출한다.
		List items = upload.parseRequest(request);
		//반복자 얻는 코드
		Iterator params = items.iterator();
		
		while(params.hasNext()){
			FileItem fileItem = (FileItem)params.next();
			//isFormField()는 요청 파라메터가 파일이 아니라 일반 데이터인 경우 true리턴
			if(!fileItem.isFormField()){
				String fileName = fileItem.getName();
				//직접 경로를 찍어봄
				out.println("1 : " + fileName + "<br/>");
				//+1을 하는 이유는 lastIndexOf()는 찾지 못하면 -1을 리턴을 하기 때문에 0값을 만들어주기 위해서 +1했다.
				//파일명 앞에 있는 경로를 제거하기 위한 코드
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				//out.println((fileName.lastIndexOf("\\")) + "<br/>");
				//out.println("2 : " + fileName);
				
				File file = new File(fileUploadPath + "/" + fileName);
				fileItem.write(file);
				out.println("파일 이름" + fileName + "<br/>");
				out.println("파일 저장 경로" + file.getPath()+ "<br/>");
				
			}
		}	
	%>
</body>
</html>