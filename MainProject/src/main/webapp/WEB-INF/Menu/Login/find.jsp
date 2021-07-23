<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<main>
	<h1 class="menutitle">FORGOT ACCOUNT</h1>
    <aside class = "login_menu">
        <ul>
            <li><a href="/login">LOGIN</a></li>
            <li><a href="/find">FORGOT ACCOUNT</a></li>
            <li><a href="/signup">REGISTER</a></li>
        </ul>
    </aside>
    <section class = "forget_sec">
        <h1>계정 정보찾기</h1>
        이메일 주소 또는 생년월일로 계정정보를 찾을 수 있습니다.
        <table class = "forgt">
            <tr>
                <td><small>이메일 주소</small></td>
                <td>
                    <input type="email" name="femail" id="femail" placeholder="이메일을 입력해주세요.">
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="button" id = "foreb" value="이메일로 계정정보 찾기 >">
                </td>
            </tr>
            <tr>
                <td colspan="2" class = "centerline">   
                    
                </td>
            </tr>
            <tr>
                <td><small>이름</small></td>
                <td><input type="text" name="fname" id="fname" placeholder="이름을 입력하세요."></td>
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
                <td colspan="2"><input type="button" id = "forbirthb" value="생년월일로 계정정보 찾기"></td>
            </tr>
        </table>
        <small>
            아이디/비밀번호가 기억났다면 <a class = "findid" href="/login">LOGIN</a>
        </small>
    </section>
</main>