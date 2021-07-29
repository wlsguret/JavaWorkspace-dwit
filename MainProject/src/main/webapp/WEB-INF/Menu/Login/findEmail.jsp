<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<main>
	<h1 class="menutitle">ID FIND</h1>
   	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
   	<div class="logindiv">
   		<table class="idfind">
   			<tr>
   				<td>
   					<h3>입력된 정보로 찾은 아이디는 아래와 같습니다.</h3><br>
   					<c:forEach var="user" items="${userlist }">
				    	<p>${user.name } ${user.email }</p>
				    </c:forEach>
   				</td>
   			</tr>
   			<tr>
   				<td class="but">
   					<input type="button" class="loginb" value="로그인하러 가기" onclick="location.href='/login'">
   					<input type="button" class="nonfb" value="다시 찾기" onclick="/find">
   				</td>
   			</tr>
   		</table>
   	</div>
</main>


