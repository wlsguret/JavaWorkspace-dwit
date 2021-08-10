<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<main id="fullpage">
	<section class="section">
		<span class="secp"><a href="/index">HOME</a></span>
	</section>
	<section class="section">
		<span class="secp"><a href="/artist">ARTIST</a></span>
	</section>
	<section class="section">
		<span class="secp"><a href="/notice">NOTICE</a></span>
	</section>
	<section class="section">
		<span class="secp"><a href="/audition">AUDITION</a></span>
	</section>
	<c:if test="${empty user}">
		<section class="section">
			<span class="secp"><a href="/login">LOGIN</a></span>
		</section>
	</c:if>
	<c:if test="${not empty user}">
		<section class="section">
			<span class="secp"><a href="/logout">LOGOUT</a></span>
		</section>	
	</c:if>
</main>