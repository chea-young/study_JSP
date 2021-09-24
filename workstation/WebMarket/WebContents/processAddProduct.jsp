<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");
//addProduct.jsp에서 사용자가 업로드한 이미지 부분을 받아서 저장을 하고 있다.
String filename = "";
String realFolder = "C:\\upload"; //웹 어플리케이션에서 절대경로
int maxSize = 10 * 1024 * 1024; //최대 업로드 크기(10M)
String encType = "utf-8";  //인코딩 유형

MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
		                 encType, new DefaultFileRenamePolicy());
//addProduct.jsp에서 사용자가 입력한 부분을 받아서 저장을 하고 있다.
String productId = request.getParameter("productId");
String name = request.getParameter("name");
String unitPrice = request.getParameter("unitPrice");
String description = request.getParameter("description");
String manufacturer = request.getParameter("manufacturer");
String category = request.getParameter("category");
String unitsInStock = request.getParameter("unitsInStock");
String condition = request.getParameter("condition");

Integer price;
long stock;
System.out.println(description);

if (unitPrice.isEmpty()) {
	price = 0; //자동박싱
} else {
	//String을 숫자로 변환하고 있다.
	price = Integer.valueOf(unitPrice); //String 숫자로 변환
}

if (unitsInStock.isEmpty()) {
	stock = 0; //자동박싱
} else {
	//String을 long타입으로 변환하고 있다.
	stock = Long.valueOf(unitsInStock);
}

System.out.println("1212");
Enumeration files = multi.getFileNames();
String fname = (String) files.nextElement();
String fileName = multi.getFilesystemName(fname);


ProductRepository dao = ProductRepository.getInstance();
Product newProduct = new Product();

//Product객체에 사용자가 입력한 내용을 저장을 하고 있다.
newProduct.setProductId(productId);
newProduct.setPname(name);
newProduct.setUnitPrice(price);
newProduct.setDescription(description);
newProduct.setManufacturer(manufacturer);
newProduct.setCategory(category);
newProduct.setUnitsInStock(stock);
newProduct.setCondition(condition);
newProduct.setFilename(fileName);

//ArrayList에 새 상품을 추가하고 있다.
dao.addProduct(newProduct);
//강제로 페이지 이동을 시키고 있다.
response.sendRedirect("products.jsp");
%>