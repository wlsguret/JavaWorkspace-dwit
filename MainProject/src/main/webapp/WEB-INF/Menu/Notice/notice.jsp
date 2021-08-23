<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function select(num){
	if(num == 1){
		console.log(num)	
		$('.notice').css({"display": "block"})
		$('.community').css({"display": "none"})
	} else if(num == 2){
		console.log(num)
		$('.community').css({"display": "block"})
		$('.notice').css({"display": "none"})
	}
}
function read(num){
	if(document.getElementById(num).style.display == "none"){
		document.getElementById(num).style.display = "block";
	} else{
		document.getElementById(num).style.display = "none";
	}
}
</script> 
<main id="notice_main">
	<h1 class="menutitle">NOTICE</h1>
	
	<ul class="notice_select">
		<li onclick="select('1')" id="notice_select_notice">notice</li>
		<li onclick="select('2')" id="notice_select_community">community</li>
	</ul>
	<ul class="notice_content notice" style="display: ">
		<c:forEach var="board" items="${noticeList }">
		<li onclick="read('content${board.idx }')"><p>${board.title }</p><div id="content${board.idx }">${board.content })</div></li>	
		</c:forEach>
	</ul>
	<ul class="notice_content community">
		<c:forEach var="board" items="${communityList }">
		<li onclick="read('content${board.idx }')"><p>${board.title }</p><div id="content${board.idx }">${board.content })</div></li>	
		</c:forEach>
	</ul>
</main>
