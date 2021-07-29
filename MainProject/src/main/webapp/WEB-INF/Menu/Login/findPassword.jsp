<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<main>
	<h1 class="menutitle">PW FIND</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp" />
	<%-- 스크립트로 user의 현재 비밀번호와 다른지 확인
		키이벤트!
		새 비밀번호 정규식 확인
		비밀번호 확인 값일치 확인 
		서브밋 함수
		버튼별 액션지정하여 서브밋
		 --%>
	<%-- <p>회원님의 아이디는</p>
	${user } --%>
	<div class="logindiv">
		<form action="/pwUpdate" name="pwfindform" id="pwfindform">
			<table class="pwfind">
				<tr>
					<td>
						<h3>비밀번호 변경</h3>
						email : ${user.email }<br>
						<input type="hidden" name="email" value="${user.email }">
						<input type="password" name="newpw" id="newpw" placeholder="새 비밀번호"><br> 
						<input type="password" name="renewpw" id="renewpw" placeholder="새 비밀번호 확인"><br> 
						<small style="color: red;">비밀번호는 8~16자, 특수문자와 대문자 1자를 포함하여 입력해주세요.</small><br> 
						<small>비밀번호가 일치하지 않습니다/일치합니다</small>
					</td>
				</tr>
			
				<tr>
					<td class="but" style="background-color: white;">
						<input type="submit" class="pwchange" value="비밀번호 변경">
						<input type="button" class="chanc" value="취소" onclick="location.href='/find'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</main>
