<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
/* 구현해야 할 스크립트 내용 
	1. 가입하기 버튼 클릭시 submit() @@@
	2. 이메일 중복확인 버튼 클릭시 db에 해당 이메일 검색
	3. 비밀번호와 비밀번호확인이 일치하지 않을시 옆에 메시지 나타내기 불일치 상태에서 가입클릭시 알림창 후 포커스 맞추기
	4. 필수 정보 미입력시 알림창 후 포커스 [이메일, 비밀번호, 이름, 개인정보동의, 중복확인, 비밀번호 일치]
	4-1. 생년월일 월,일 선택시 다시 선택하게하기
	5. 비밀번호 제약사항 걸기 영문 대소문, 숫자, 특수문자 포함(6~32자리)
	6. 시간되면 나중에 메일 보내는 거 해서 문자확인까지
*/
/* form Name을 통해서 태그 접근 */
/* function signup() {
	var Form = document.signupform;
	Form.action = "/signupdo";
	Form.submit();

} */
function check_pw(){
	var pw = document.getElementById('pw').value;
	var pw_c = document.getElementById('pw_c').value;
	var msg = document.getElementById('pw_msg');
	if (pw_c!="") { 
		msg.innerHTML = ""; 
		if (pw !=pw_c) {
			msg.style.color = "red";
			msg.innerHTML = "다시 확인해 주세요."; 
		} 
		else { 
			msg.style.color = "blue";	
			msg.innerHTML = "비밀번호가 일치합니다."; 
		} 
	} 

}

 function checkemail(){
	 var email = document.getElementById('signup_email').value;
	 location.href='/checkemail?email='+email;
 }
</script>
<main>    
	<h1 class="menutitle">REGISTER</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
	<section class = "signup_form">
	    <h1>회원가입</h1>
	    <p>WELCOME TO YELLOWLAB!</p>
	    <form  method="get" id="signupform" name="signupform" >
	    <table class = "signup_table">
	        <tr>
	            <td>이메일주소</td>
	            <td><input type="text" name="email" id="signup_email" placeholder="이메일을 입력해주세요." required>@
	            <select name="domain" id="domain">
	            	<option value='naver.com'>naver.com</option>
	                <option >daum.net</option>
	            	<option value='google.com'>google.com</option>
	            	<option value='kakao.com'>kakao.com</option>
	            </select>
	            <input type="button" value = "중복확인" onclick="checkemail()"><br>
	            <small>이메일은 아이디로 사용되며, 확인 이메일이 발송됩니다.</small><br>
	            <small>이미 등록된 이메일이라면 </small><input type="button" value="확인하기" onclick="location.href='/find'">
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호</td>
	            <td><input type="password" name="password" id="pw" placeholder="비밀번호를 입력하세요." onkeyup="check_pw()"
	             pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{6,50}$" required>
	            <br><small>영문 대소문, 숫자, 특수문자 포함(6~20자리)</small>
	            </td>
	        </tr>
	        <tr>
	            <td>비밀번호 확인</td>
	            <td><input type="password" name="pw_c" id="pw_c" placeholder="비밀번호 재확인" onkeyup="check_pw()" required>
	            <small id="pw_msg"></small>
	            </td>
	        </tr>
	        <tr>
	            <td>이름</td>
	            <td><input type="text" name="name" id="name" placeholder="이름을 입력하세요." required></td>
	        </tr>
	        <tr>
	            <td>생년월일(선택사항)</td>
	            <td><input type="number" name="year" id="year" placeholder="년도" style="width:50px;" max="2021" min="1900" value="0">
	                <span class="box">
	                    <select name="mm" id="mm">
	                        <option value=0>월</option>
	                        <c:forEach var="i" begin="1" end="12">
	                        	<option value="${i }">${i }</option>
	                        </c:forEach>
	                    </select>
	                </span>
	
	                <span id = "dd">
	                    <select name="dd" id="dd">
	                    	<option value=0>일</option>
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
	                <small> YELLOWLAB 개인정보 수집 및 이용에 동의합니다.(필수)
	                    <input type="radio" name="agreement" id="agree" value="agree" required>동의
	                    <input type="radio" name="agreement" id="disagree" value="disagree" >동의 안함
	                </small> 
	            </td>
	            </tr>
	            <tr>
	                <td colspan="2" id = "signup_last">
	                    <input type="submit" value="가입완료 >" id="signupbtn">
	                    <input type="button" value="취소 >" id="cancelbtn">
	                </td>
	            </tr>
	           </table>
	    </form>
	</section>
</main>
