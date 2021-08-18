<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside>
	<div class="list">
		<ul class="menu_list">
			<li><a id="home" href="/index">HOME</a></li>
			<li><a id="artist" href="/artist" data-transition="fade">ARTIST</a></li>
			<li><a id="notice" href="/notice">NOTICE</a></li>
			<li><a id="audition" href="/video">VIDEO</a></li>
			<c:if test="${empty user}">
				<li><a id="login" href="/login" data-transition='fade'>LOGIN</a></li>
			</c:if>
			<c:if test="${not empty user}">
				<li><a id="login" href="/logout" data-transition='fade'>LOGOUT</a></li>
			</c:if>
		</ul>
	</div>
</aside>