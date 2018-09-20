<%@page import="com.exe.springmvc.PersonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	PersonDTO dto = (PersonDTO)request.getAttribute("dto");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>Param Result</h2>
	이름:<%=name %><br/>
	전화:<%=phone %><br/>
	이메일:<%=email %><br/>
	<br/>
	<br/>
	
	<h2>Model and View</h2>
	<%if(dto!=null){ %>
	이름:<%=name %><br/>
	전화:<%=phone %><br/>
	이메일:<%=email %><br/>
	<%}else{%>
	데이터없음<br/>
	<%} %>
</body>
</html>