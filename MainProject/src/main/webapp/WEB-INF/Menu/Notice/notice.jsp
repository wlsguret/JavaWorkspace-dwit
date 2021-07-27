<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<main>
	<h1 class="menutitle">NOTICE</h1>
	<h1>notice</h1>
	<c:forEach var="board" items="${noticeList }">
	${board }<br>
	</c:forEach>
	<h1>community</h1>
	<c:forEach var="board" items="${communityList }">
	${board }<br>
	</c:forEach>
</main>