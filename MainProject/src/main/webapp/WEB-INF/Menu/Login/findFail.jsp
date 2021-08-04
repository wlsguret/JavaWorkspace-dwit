<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<main>
	<h1 class="menutitle">ID FAIL</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
	<div class="logindiv">
		<table class="idfind">
			<tr>
				<td>
					<h3>입력된 정보와 일치하는 아이디가 없습니다.</h3> <br>
					<p>ID is not founded.</p>
					<p></p>
				</td>
			<tr>
				<td class="but">
				<input type="button" class="loginb" onclick="location.href='/find'"
				value="다시 찾기"></td>
			</tr>
		</table>
	</div>
</main>