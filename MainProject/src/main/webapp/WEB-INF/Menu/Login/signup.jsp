<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/js/signup.js"></script>
<main>    
<!-- 클래스 만들어서 클래스before 해서 빨간별 추가 해서 필수사항 뒤에 태그추가 -->
	<h1 class="menutitle">REGISTER</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
	<section class = "signup_form">
	    <h1>회원가입</h1>
	    <p>WELCOME TO YELLOWLAB!</p>
	    <form action="/signupdo" method="get" id="signupform" name="signupform" >
	    <table class = "signup_table">
	        <tr>
	            <td>이메일주소<span class="star"/></td>
	            <td><input type="text" name="email" id="signup_email" placeholder="이메일을 입력해주세요." onkeypress="check_eamil_reset()">@
	            <select name="domain" id="domain">
	            	<option value='unchecked'>도메인선택</option>
	            	<option value='naver.com'>naver.com</option>
	                <option value='daum.net'>daum.net</option>
	            	<option value='google.com'>google.com</option>
	            	<option value='kakao.com'>kakao.com</option>
	            </select>
	            <input type="button" id="checkEmail" value="중복확인" onclick="check_email()"><br>
	            <small>이메일은 아이디로 사용되며, 확인 이메일이 발송됩니다.</small><br>
	            <small>이미 등록된 이메일이라면 </small><input type="button" value="확인하기" onclick="location.href='/find'">
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호<span class="star"/></td>
	            <td><input type="password" name="password" id="pw" placeholder="비밀번호를 입력하세요." onkeyup="check_pw_pattern(); check_pw_same()"
						maxlength="20"><small id="pw_msg"></small>
	            <br><small>영문 대소문, 숫자, 특수문자 포함(6~20자리)</small>
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호 확인<span class="star"/></td>
	            <td><input type="password" name="pw_c" id="pw_c" placeholder="비밀번호 재확인" onkeyup="check_pw_same()" 
	             maxlength="20">
	            <small id="pw_c_msg"></small>
	            </td>
	        </tr>
	        <tr>
	            <td>이름<span class="star"/></td>
	            <td><input type="text" name="name" id="name" placeholder="이름을 입력하세요." 
	            maxlength="5">
	            </td>
	        </tr>
	        <tr>
	            <td>생년월일<span class="star"/></td>
	            <td><input type="text" name="year" id="year" placeholder="년도" style="width:50px;" maxlength="4" max="2050">
	                <span class="box">
	                    <select name="mm" id="mm">
	                        <optgroup label="월"></optgroup>
	                        <c:forEach var="i" begin="1" end="12">
	                        	<option value="${i }">${i }</option>
	                        </c:forEach>
	                    </select>
	                </span>
	
	                <span id = "dd">
	                    <select name="dd" id="dd" >
	                    	<optgroup label="일"></optgroup>
	                    	<c:forEach var="i" begin="1" end="31">
	                        	<option value="${i }">${i }</option>
	                        </c:forEach>
	                    </select>
	                </span>
	            </td>
	        </tr>
	        <tr>
	            <td>성별(선택사항)</td>
	            <td><input type="radio" name="gender" id="genderM" value="m"><small>남성</small>
	                <input type="radio" name="gender" id="genderF" value="f"><small>여성</small></td>
	        </tr>
	        <tr>
	            <td colspan="2"><small>이메일을 통한 상품 및 이벤트 등 광고성 정보 수신에 동의 합니다.(선택사항)</small>
	            <small><input type="radio" name="ok" id="ok" value="agree">동의
	            <input type="radio" name="ok" id="no" value="disagree">동의안함
	            </small></td>
	        </tr>
	        <tr>
	            <td colspan="2" style="text-align: center;">YELLOWLAB 개인정보 수집 및 이용<br><br>
	               <jsp:include page="/WEB-INF/Menu/Login/agreements.jsp"/>
	               <br>
	                <small> YELLOWLAB 개인정보 수집 및 이용에 동의합니다.<span class="star"/>
	                    <input type="radio" name="agreement" id="agree" value="agree">동의
	                    <input type="radio" name="agreement" id="disagree" value="disagree" >동의 안함
	                </small> 
	            </td>
	            </tr>
	            <tr>
	                <td colspan="2" id = "signup_last">
	                    <input type="button" value="가입완료 >" id="signupbtn" onclick="signupdo()">
	                    <input type="button" value="취소 >" id="cancelbtn" onclick="location.href='/login'">
	                </td>
	            </tr>
	           </table>
	    </form>
	</section>
</main>
