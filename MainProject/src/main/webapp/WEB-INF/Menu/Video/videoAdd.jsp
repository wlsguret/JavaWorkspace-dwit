<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main>
	<section>
	<!-- 필요한 데이터 
		URL 이미지파일 파일이름 아티스트이름 곡타이틀 발매일
	 -->
		<form action="/videoInsert" enctype="multipart/form-data" method="post">
			파일명:<input type="text" name="filename"><br>
		    <input type="file" name="file"><p>
		    <input type="submit" value="파일업로드">
		</form>
	</section>
</main>