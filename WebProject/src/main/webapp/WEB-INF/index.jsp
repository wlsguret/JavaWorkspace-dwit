<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta property="og:title" content="30theart" />
<meta property="og:type" content="website" />
<meta property="og:url" content="https://30theart.netlify.app/" />
<meta property="og:description"
	content="인생을 예술작품으로 대한다면, 30일간의 창작을 통해 나의 일상을 예술로 만들다." />
<meta property="og:image"
	content="https://30theart.netlify.app/images/30theart_planet.png" />
<title>WEBproject/wlsguret</title>
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/mystyle.css" />
<link rel="stylesheet" href="/css/errorPage.css" />
<link rel="icon" type="image/png" sizes="192x192"
	href="/images/favicon.png">
<link rel="apple-touch-icon" href="/images/30theart_lg.png" />
<link rel="shortcut icon" href="/images/30theart_lg.png" />
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
</head>
<body>

	<a href="https://goodnightgoodday.netlify.app" target="_blank">
		<div class="planet sun">
			<div class="desc">네 사랑이 무사하기를. 내 사랑도 무사하니까.</div>
		</div>
	</a>
	<div class="planet mercury"></div>
	<div class="planet venus"></div>
	<div class="planet earth"></div>

	<a href="https://suns-arcana.netlify.app/" target="_blank">
		<div class="planet mars">
			<div class="desc">오리엔탈 무드 일러스트</div>
		</div>
	</a>
	<a href="https://forbetterdays.netlify.app/" target="_blank">
		<div class="planet jupiter">
			<div class="desc">PLAYGROUND_ the way to find myself</div>
		</div>
	</a>
	<div class="planet saturn"></div>
	<div class="planet uranus"></div>
	<div class="planet neptune"></div>
	<div class="planet pause"></div>

	
	<div class="text">
		<h1
			style="text-shadow: -2px 0 0 rgba(68, 26, 26, 0.7) 2px 0 0 rgba(0, 255, 255, .7)">
			<c:if test="${id eq null }">
			guest
			</c:if>
			<c:if test="${id ne null }">
			${id }
			</c:if>
			</h1>
		<!-- <p class="about-link" style="">
			<a href="/about.html">about</a>
		</p> -->
	</div>
	<div class="menu ">
	<ul>
		<c:if test="${id eq null }">
		<%-- <jsp:include page="/WEB-INF/login/loginform.jsp"/> --%>
		<li onclick="location.href='/login'">login</li>
		</c:if>
		<c:if test="${id ne null }">
		<li onclick="location.href='/logout'">logout</li>
		<li onclick="location.href='/home'">home</li>
		<li onclick="location.href='/baord'">board</li>
		</c:if>
	</ul>
	</div>
	
	
</body>
</html>