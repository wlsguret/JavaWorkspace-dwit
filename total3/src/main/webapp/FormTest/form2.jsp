<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name:<input type="text" id="name" name="name" value="hong" disabled><br>
address:<input type="text" id="address" name="address" value="중랑구" disabled><br>
<input type="button" value="전송" onclick="send()">
<script type="text/javascript">
// alert(document.getElementById("name").value);
function send() {
	var name = document.getElementById("name").value,
	address = document.getElementById("address").value;
	location.href="form_proc.jsp?name="+name+"&address="+address;	
}
</script>
</body>
</html>