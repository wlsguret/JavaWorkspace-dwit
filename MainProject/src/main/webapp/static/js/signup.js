/*회원가입 데이터체크 스크립트*/
var checkPwSame = false;
var checkPwPattern = false;
var checkEmail = false;

function signupdo(){
	var Form = document.signupform;
	var name = $("#name").val();
	var year = $("#year").val();
	if(!check_code){
		alert("메일인증이 필요합니다.");
		$("#checkEmail").focus();
		return false;
	} else if(!checkPwSame){
		alert("비밀번호를 확인하세요.")
		$("#pw").focus();
		return false;
	} else if(!check_name(name)){
		alert("이름을 입력하세요.");
		$("#name").focus();
		return false;
	} else if(year == "" || year.length != 4 || year < 1900 || year >2050){
		alert("생년월일을 확인하세요.");
		$("#year").focus();
		return false;
	} else if(!$("#agree").is(':checked')){
		alert("약관의 동의하셔야 가입가능합니다.")
		$("#agree").focus();
		return false;
	} else{
		birthday();
		Form.submit();
	}
}

function birthday(){
	$('#birthday').val(new Date($('#year').val(),$('#mm').val()-1,$('#dd').val()));
}

/* 이메일 DB에서 중복확인 */
function check_email(){
	var id = document.getElementById('signup_email').value;
	var domain = document.getElementById('domain').value;
	
	if((id.length < 6 || id.length > 15) && domain == "unchecked"){
		alert("아이디 길이, 도메인을 확인하세요.");
	}else if(id.length < 6 || id.length > 15){
		alert("아이디 길이를 확인하세요.");
	} else if(domain == "unchecked"){
		alert("도메인을 선택하세요.");
	} else {
		var email = id+"@"+domain;
		$.ajax({url: "/checkemail?email="+email, success: function(result){
			if(result === "true"){
				alert('가입 가능한 이메일입니다.')
				checkEmail = true;
			} else {
				alert('이미 사용중인 이메일입니다.');
				checkEmail = false;
			}
		}})
	}
}

/* 이메일 중복확인 후 이메일 수정시 리셋 */
function checkEmail_reset(){
	checkEmail = false;
	check_code = false;
}

/* 비밀번호 정규식 */
function check_pw_pattern(){
	var pw = $("#pw").val();
	var msg = document.getElementById('pw_msg');
	var num = pw.search(/[0-9]/g);
	var eng = pw.search(/[a-z]/ig);
	var spe = pw.search(/[.`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	if(pw.length < 6 || pw.length > 20){
		msg.innerHTML = "6자리 ~ 20자리 이내로 입력해주세요.";
		return false;
	}else if(pw.search(/\s/) != -1){
		msg.innerHTML = "비밀번호는 공백 없이 입력해주세요.";
		return false;
	}else if(num < 0 || eng < 0 || spe < 0 ){
		msg.innerHTML = "영문,숫자, 특수문자를 혼합하여 입력해주세요.";
		return false;
	}else {
		msg.innerHTML = "안전한 비밀번호입니다.";
		checkPwPattern = true;
		return true;
	}
}

/* 비밀번호 일치 확인 */
function check_pw_same(){
	var pw = document.getElementById('pw').value;
	var pw_c = document.getElementById('pw_c').value;
	var msg = document.getElementById('pw_c_msg');
	checkPwSame = false;
	if (pw_c !="" || (pw != pw_c)) { 
		msg.innerHTML = ""; 
		if(!checkPwPattern){
			msg.style.color = "red";
			msg.innerHTML = "비밀번호가 안전하지 않습니다."; 
			checkPwSame = false; 
		}else if (pw !=pw_c) {
			msg.style.color = "red";
			msg.innerHTML = "비밀번호가 일치하지 않습니다."; 
			checkPwSame = false; 
		} else { 
			msg.style.color = "green";	
			msg.innerHTML = "비밀번호가 일치합니다.";
			checkPwSame = true;
		} 
	} 
}

/* 이름 정규식 */
function check_name(str){
	var reg = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	if(!reg.test(str)){
		return false;
	}
	return true;
}
/*회원가입 데이터체크 스크립트*/
/*타이머, 보안메일 전송 스크립트*/
var Scode;
var check_code = false;
var timer = null;
var isRunning = false;
$(function(){
	$("#sendmail").click(function(e){
		if(checkEmail){
			check_code = false;
			var email = $('#signup_email').val()+"@"+$('#domain').val();
			alert("보안코드가 발송되었습니다.");
			$.ajax({url: "/mailtest?email="+email, success: function(result){
				Scode = result;
				console.log("전송된 코드:"+Scode);
			}})
			var display = $('.time');
			var leftSec = 180;
			$('#code_chk_btn').removeAttr("disabled");
			// 남은 시간
			// 이미 타이머가 작동중이면 중지
			if (isRunning){
				clearInterval(timer);
				display.html("");
				startTimer(leftSec, display);
			}else{
				startTimer(leftSec, display);
			}
		} else {
			alert("중복확인이 필요합니다.");
		}
	});
})
$(function(){
	$('#code_chk_btn').click(function(){
		var code = $('.code_chk').val();
		if(code == Scode){
			clearInterval(timer);
			$('.time').html("인증완료");
			$('#code_chk_btn').attr("disabled","disabled");
			$('#checked_email').val($('#signup_email').val()+"@"+$('#domain').val());
			isRunning = false;
			check_code = true;
			alert("확인되었습니다.");
		} else{
			alert("보안코드가 일치하지 않습니다.");
		}
		
	})
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
/*타이머 스크립트*/