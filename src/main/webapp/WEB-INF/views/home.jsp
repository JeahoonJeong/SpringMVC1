<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="UTF-8" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h3><a href="hello.action">Spring 환영메세지</a></h3>

<h2>Spring MVC Controller Test</h2>

<h3>1. <a href="test/param.action?name=suzi&phone=010-111-2222&email=suzi@naver.com">Get 방식 테스트</a></h3>

<h3>2.Post 방식 테스트</h3>
<form action="test/param.action" method="post">
이름:<input type="text" name="name"><br/>
전화:<input type="text" name="phone"><br/>
메일:<input type="text" name="email"><br/>
<input type="submit" value="전송">
</form>

<h3>3. <a href="test/mav.action?name=suzi&phone=010-111-2222&email=suzi@naver.com">ModelAndView Get방식 테스트</a></h3>

<h3>4.ModelAndView Post방식 테스트</h3>
<form action="test/mav.action" method="post">
이름:<input type="text" name="name"><br/>
전화:<input type="text" name="phone"><br/>
메일:<input type="text" name="email"><br/>
<input type="submit" value="전송">
</form>

<h3>5. <a href="test/redirect.action">리다이렉트 테스트</a></h3>


</body>
</html>
