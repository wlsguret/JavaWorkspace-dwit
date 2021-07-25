<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<main>
	<h1 class="menutitle">FORGOT ACCOUNT</h1>
   	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
    <section class = "forget_sec">
        <h1>계정 정보찾기</h1>
        <form action="/findEmail">
	        <table class = "forgt">
	            <tr>
	                <td><small>이름</small></td>
	                <td><input type="text" name="fname" id="fname" placeholder="이름을 입력하세요." required></td>
	            </tr>
	            <tr>
	                <td><small>생년월일</small></td>
	                <td>
	                    <input type="text" name="fyear" id="fyear" placeholder="년도">
	                    <span class="fmm">
	                        <select name="fmm" id="fmm">
	                            <option value="00">월</option>
	                            <c:forEach var="i" begin="1" end="9">
		                        	<option value="0${i }">${i }</option>
		                        </c:forEach>
		                        <c:forEach var="i" begin="10" end="12">
		                        	<option value="${i }">${i }</option>
		                        </c:forEach>
	                        </select>
	                    </span>
	
	                    <span id = "fdd">
	                        <select name="fdd" id="fdd">
		                        <option value="00">일</option>
		                        <c:forEach var="i" begin="1" end="9">
		                   	    	<option value="0${i }">${i }</option>
			                    </c:forEach>
			                    <c:forEach var="i" begin="10" end="31">
		                   	    	<option value="${i }">${i }</option>
			                    </c:forEach>
	                        </select>
	                    </span>
	                </td>
	            </tr>
	            <tr>
	                <td colspan="2">
	                    <input type="submit" class="forgetBtn" value="이메일 찾기 >">
	                </td>
	            </tr>
	            <tr>
	                <td colspan="2" class = "centerline"/>      
	            </tr>
			</table>
		</form>
		<form action="">
			<table class = "forgt">
	            <tr>
	                <td><small>이메일</small></td>
	                <td><input type="email" name="femail" id="femail" placeholder="이메일을 입력하세요."></td>
	            </tr>
	            <tr>
	                <td><small>생년월일</small></td>
	                <td>
	                    <input type="text" name="fyear" id="fyear" placeholder="년도">
	                    <span class="fmm">
	                        <select id="fmm">
	                            <option>월</option>
	                            <c:forEach var="i" begin="1" end="12">
		                        	<option value="${i }">${i }</option>
		                        </c:forEach>
	                        </select>
	                    </span>
	
	                    <span id = "fdd">
	                        <select name="fdd" id="fdd">
	                        <option>일</option>
	                        <c:forEach var="i" begin="1" end="31">
	                   	    	<option value="${i }">${i }</option>
		                    </c:forEach>
	                        </select>
	                    </span>
	                </td>
	            </tr>
	            <tr>
	                <td colspan="2"><input type="button" class="forgetBtn" value="비밀번호 찾기 >"></td>
	            </tr>
	            <tr>
	                <td colspan="2" class = "centerline"/>      
	            </tr>
	            <tr>
	            	<td colspan="2"><small>아이디/비밀번호가 기억났다면 <a class = "findid" href="/login">LOGIN</a></small></td>
	            </tr>
	        </table>
        </form>
    </section>
</main>