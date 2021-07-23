<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<main>    
	<h1 class="menutitle">REGISTER</h1>
	<aside class = "login_menu">
	    <ul>
	        <li><a href="/login">LOGIN</a></li>
	        <li><a href="/find">FORGOT ACCOUNT</a></li>
	        <li><a href="/signup">REGISTER</a></li>
	    </ul>
	</aside>
	<section class = "signup_form">
	    <h1>회원가입</h1>
	    <p>WELCOME TO YELLOWLAB!</p>
	    <form action="">
	    <table class = "signup_table">
	        <tr>
	            <td>이메일주소</td>
	            <td><input type="email" name="signup_email" id="signup_email" placeholder="이메일을 입력해주세요.">
	            <input type="button" value = "중복확인"><br>
	            <small>이메일은 아이디로 사용되며, 확인 이메일이 발송됩니다.</small><br>
	            <small>이미 등록된 이메일이라면 </small><a href="/find" style=" text-decoration:none;"><small style = "color:gray;">확인하기</small></a>
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호</td>
	            <td><input type="password" name="pw" id="pw" placeholder="비밀번호를 입력하세요.">
	            <br><small>영문 대소문, 숫자, 특수문자 포함(6~32자리)</small>
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호 확인</td>
	            <td><input type="password" name="pw_c" id="pw_c" placeholder="비밀번호 재확인"></td>
	        </tr>
	        <tr>
	            <td>이름</td>
	            <td><input type="text" name="name" id="name" placeholder="이름을 입력하세요."></td>
	        </tr>
	        <tr>
	            <td>생년월일(선택사항)</td>
	            <td><input type="text" name="year" id="year" placeholder="년도" style="width:50px;">
	                <span class="box">
	                    <select id="mm">
	                        <option>월</option>
	                        <c:forEach var="i" begin="1" end="12">
	                        	<option value="${i }">${i }</option>
	                        </c:forEach>
	                    </select>
	                </span>
	
	                <span id = "dd">
	                    <select name="dd" id="dd">
	                    	<option>일</option>
	                    	<c:forEach var="i" begin="1" end="31">
	                        	<option value="${i }">${i }</option>
	                        </c:forEach>
	                    </select>
	                </span>
	            </td>
	        </tr>
	        <tr>
	            <td>성별(선택사항)</td>
	            <td><input type="radio" name="gender" id="gender"><small>남성</small>
	                <input type="radio" name="gender" id="gender"><small>여성</small></td>
	        </tr>
	        <tr>
	            <td colspan="2"><small>이메일을 통한 상품 및 이벤트 등 광고성 정보 수신에 동의 합니다.</small>
	            <br><small><input type="radio" name="ok" id="ok">동의
	            <input type="radio" name="ok" id="ok">동의안함
	            </small></td>
	        </tr>
	        <tr>
	            <td colspan="2" style="text-align: center;">YELLOWLAB 개인정보 수집 및 이용<br><br>
	               <jsp:include page="/WEB-INF/Menu/Login/agreements.jsp"/>
	               <br>
	                <small> YELLOWLAB 개인정보 수집 및 이용에 동의합니다.
	                    <input type="radio" name="check" id="check">동의
	                    <input type="radio" name="check" id="check">동의 안함
	                </small> 
	            </td>
	            </tr>
	            <tr>
	                <td colspan="2" id = "signup_last"><small>
	                    <button id = "okb"><span>가입완료 ></span></button>
	                    <button id = "nokb"><span>취소 ></span></button>
	                </small>
	                </td>
	            </tr>
	           
	    </table>
	    </form>
	</section>
</main>