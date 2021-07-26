<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<main>
	<h1 class="menutitle">FORGOT ACCOUNT</h1>
   	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
   	<p>회원님의 아이디는</p>
    ${user }
</main>