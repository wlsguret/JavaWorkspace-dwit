<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">

function con(){
	var fileName = document.getElementById('myfile').files[0].name;
	var f = fileName.split('.');
	var e = f[f.length-1];
	console.log(e);
	$('input[name=imgFile]').val($('input[name=artist]').val()+" "+$('input[name=title]').val()+"."+e);
}
function rDate(){
	$('input[name=releaseDate]').val(new Date($('#date').val()));
}
</script>    
<main>
	<section>
	<!-- 필요한 데이터 
		URL 이미지파일 파일이름 아티스트이름 곡타이틀 발매일
	 -->
		<form action="/videoInsert" enctype="multipart/form-data" method="post">
			URL <input type="text" name="url"><br>
			아티스트 이름 <input type="text" name="artist"><br>
			곡이름 <input type="text" name="title"><br>
			발매일 <input type="text" id="date"><br>
		    <input type="hidden" name="releaseDate" onsubmit="rDate()">
		    <input type="file" name="file" id="myfile">
		    <input type="hidden" id="imgfile" name="imgFile" onsubmit="con()">
		    <input type="button" onclick="con();rDate()" value="확인">
		    <input type="submit" value="파일업로드">
		</form>
	</section>
</main>