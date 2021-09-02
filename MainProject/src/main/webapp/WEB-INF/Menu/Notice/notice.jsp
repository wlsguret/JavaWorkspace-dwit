<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
function select(num){
	if(num == 1){
		$('.notice').css({"display": "block"})
		$('.community').css({"display": "none"})
		$('.notice_select1').css({"background-color": "rgb(241, 241, 241)"})
		$('.notice_select2').css({"background-color": "white"})
	} else if(num == 2){
		$('.community').css({"display": "block"})
		$('.notice').css({"display": "none"})
		$('.notice_select1').css({"background-color": "white"})
		$('.notice_select2').css({"background-color": "rgb(241, 241, 241)"})
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
	
	<div>
		<ul class="notice_select" style="margin-bottom: 10px">
			<li class="notice_select1" onclick="select('1')">ARTIST</li>
			<li class="notice_select2" onclick="select('2')">MEMBER</li>
		</ul>
		<ul class="notice_header">
			<li>NO</li>
			<li>TITLE</li>
			<li>DATE</li>
		</ul>
	</div>	

	<%-- <ul class="notice">
		<c:forEach var="board" items="${noticeList }">
		<li onclick="read('notice${board.idx }')"><p>${board.title }</p><div id="notice${board.idx }">${board.content })</div></li>	
		</c:forEach>
	</ul> --%>
	
	<ul class="notice">
		<c:forEach var="board" items="${noticeList }">
			<ul class="notice_content" onclick="read('notice${board.idx }')">
				<li>${board.idx }</li>
				<li>${board.title }</li>
				<li>${board.writeDay }</li>
			</ul>	
		</c:forEach>
	</ul>
	
	<ul class="community">
		<c:forEach var="board" items="${communityList }">
		<li onclick="read('community${board.idx }')"><p>${board.title }</p><div id="community${board.idx }">${board.content })</div></li>	
		</c:forEach>
	</ul>
</main>
