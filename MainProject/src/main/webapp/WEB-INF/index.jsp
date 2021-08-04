<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지나진혁 프로젝트</title>
<link rel="shortcut icon" href="img/favicon.png"/>
<link rel="icon" href="img/favicon.png"/>
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/jquery.fullPage.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
	crossorigin="anonymous"></script>
<script src="js/jquery.fullPage.js"></script>
<script src="js/main.js"></script>
</head>
<body id="indexbody">
	<jsp:include page="/WEB-INF/Menu${main }"/>
	<jsp:include page="/WEB-INF/Menu/Home/aside.jsp"/>
	<jsp:include page="/WEB-INF/Menu/Home/footer.jsp"/>
</body>
</html>