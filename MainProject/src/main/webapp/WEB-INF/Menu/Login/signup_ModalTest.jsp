<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modal</title>
    <style>
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: none;
            flex-direction: column;
            align-items: center;
            justify-content: center;

            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }

        #modal .modal-window {

            background: rgba( 69, 139, 197, 1 );
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );

            width: 400px;
            height: 500px;
            position: relative;
            top: -100px;
            padding: 10px;
        }

        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: white;
            
        }

        #modal .title h2 {
            display: inline;
        }

        #modal .close-area {
            display: inline;
            float: right;
            padding-right: 10px;
            cursor: pointer;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            text-shadow: 1px 1px 2px gray;
            color: white;
        }
    </style>
    <script src="/js/signup.js"></script>
    <script type="text/javascript">
/* $.ajax({url: "/checkemail?email="+email, success: function(result){
	 console.log(result);
	 if(result == "fail"){
		 alert('이미 사용중인 이메일입니다.');
		 checkEmail = false;
	 } else {
		 alert('가입 가능한 이메일입니다.')
		 checkEmail = true;
	 }
}}) */
var Scode;
function sendmail() {
	var email = $('#signup_email').val()+"@"+$('#domain').val();
	$.ajax({url: "/mailtest?email="+email, success: function(result){
		Scode = result;
		console.log("전송된 코드:"+Scode);
	}})
}

function Scode_chk(){
	var code = $('.code_chk').val();
	if(code == Scode){
		clearInterval(timer);
		$('.time').html("인증완료");
		$('.btn_chk').attr("disabled","disabled");
		isRunning = false;
		console.log("결과일치")
	}
}
</script>
</head>

<body>
<main>
	<h1 class="menutitle">REGISTER</h1>
	<jsp:include page="/WEB-INF/Menu/Login/login_menu.jsp"/>
    
    <section class = "signup_form">
	    <h1>회원가입</h1>
	    <p>WELCOME TO YELLOWLAB!</p>
	    <form action="/signupdo" method="get" id="signupform" name="signupform" >
	    <table class = "signup_table">
	        <tr>
	            <td>이메일(ID)<span class="star"/></td>
	            <td><input type="text" name="email" id="signup_email" placeholder="이메일을 입력해주세요." onkeypress="check_eamil_reset()">@
	            <select name="domain" id="domain">
	            	<option value='unchecked'>도메인선택</option>
	            	<option value='naver.com'>naver.com</option>
	                <option value='daum.net'>daum.net</option>
	            	<option value='google.com'>google.com</option>
	            	<option value='kakao.com'>kakao.com</option>
	            </select>
	            <input type="button" value="모달" id="btn-modal">
	            <input type="button" id="checkEmail" value="중복확인" onclick="check_email()"><br>  
	            <small>이메일은 아이디로 사용되며, 확인 이메일이 발송됩니다.</small><input type="button" id="test" value="이메일 인증" onclick="sendmail()"><br>
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

    <div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>본인인증</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content">
                <form action="">
                	<input type="text" readonly="readonly" id="modalemail">
                	<input type="button" value="인증 메일 전송" id="modaltimer" onclick="sendmail()"><br>
                	<input type="text" class="code_chk" size="6" maxlength="6">
                	<span class="time"></span>
                	<input type="button" value="확인" class="btn_chk" onclick="Scode_chk()">
                </form>
                
            </div>
        </div>
    </div>
    <!-- 모달 스크립트 -->
    <script>
    const modal = document.getElementById("modal")
    const indexbody = document.getElementById("indexbody")

    function modalOn() {
        modal.style.display = "flex"
       	indexbody.style.overflow = "hidden"
    }

    function isModalOn() {
        return modal.style.display === "flex"
    }

    function modalOff() {
        modal.style.display = "none"
       	indexbody.style.overflow = "auto"
		clearInterval(timer);
        $('.time').html("");
		$('.btn_chk').attr("disabled","disabled");
		isRunning = false;
    }


    const btnModal = document.getElementById("btn-modal")
    btnModal.addEventListener("click", e => {
        modalOn()
    })
    btnModal.addEventListener("click", e => {
    	$('#modalemail').val( $('#signup_email').val()+"@"+$('#domain').val())
    })

    const closeBtn = modal.querySelector(".close-area")
    closeBtn.addEventListener("click", e => {
        modalOff()
    })

    modal.addEventListener("click", e => {
        const evTarget = e.target
        if(evTarget.classList.contains("modal-overlay")) {
            modalOff()
        }
    })

    window.addEventListener("keyup", e => {
        if(isModalOn() && e.key === "Escape") {
            modalOff()
        }
    })
    </script>
    <!-- 모달 스크립트 -->
    <!-- 타이머 스크립트 -->
    <script>

var timer = null;
var isRunning = false;
$(function(){

	    $("#modaltimer").click(function(e){
    	var display = $('.time');
    	var leftSec = 180;
    	$('.btn_chk').removeAttr("disabled");
    	// 남은 시간
    	// 이미 타이머가 작동중이면 중지
    	if (isRunning){
    		clearInterval(timer);
    		display.html("");
    		startTimer(leftSec, display);
    	}else{
    	startTimer(leftSec, display);
    		
    	}
    });
})

    
function startTimer(count, display) {
            
    		var minutes, seconds;
            timer = setInterval(function () {
            minutes = parseInt(count / 60, 10);
            seconds = parseInt(count % 60, 10);
     
            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;
     
            display.html(minutes + ":" + seconds);
     
            // 타이머 끝
            if (--count < 0) {
    	     clearInterval(timer);
    	     alert("시간초과");
    	     display.html("시간초과");
    	     $('.btn_chk').attr("disabled","disabled");
    	     isRunning = false;
            }
        }, 1000);
             isRunning = true;
}


</script>
<!-- 타이머 스크립트 -->
</body>
</html>