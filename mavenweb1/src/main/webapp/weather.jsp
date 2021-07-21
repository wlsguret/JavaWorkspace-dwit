<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
    $.ajax({url: "http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnVilageFcst?serviceKey=H6cvp9T6GzttiWWSccMeX0QkcKL0HMy6aPMwngethwA%2B1KVOOAgtptlL0l569rEGwOeOah3OKcDgzIoO56AM2A%3D%3D&pageNo=1&numOfRows=10&dataType=XML&CURRENT_DATE=2021071516&HOUR=24&COURSE_ID=1", success: function(result){
      $("#div1").html(result);
    }});
  });
});
</script>
</head>
<body>
<div id="div1" style="width: 100%; border: 1px solid blue;"></div>
<button>Get External Content</button>
<iframe width="100%" src="http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnVilageFcst?serviceKey=H6cvp9T6GzttiWWSccMeX0QkcKL0HMy6aPMwngethwA%2B1KVOOAgtptlL0l569rEGwOeOah3OKcDgzIoO56AM2A%3D%3D&pageNo=1&numOfRows=10&dataType=XML&CURRENT_DATE=2021071516&HOUR=24&COURSE_ID=1"></iframe>
</body>
</html>