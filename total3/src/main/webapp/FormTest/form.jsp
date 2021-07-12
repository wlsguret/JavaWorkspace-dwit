<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="form_proc.jsp">
name:<input type="text" name="name" value="hong" disabled><br>
address:<input type="text" name="address" value="중랑구" disabled><br>
<input type="hidden" name="address" value="중랑구">
<input type="hidden" name="name" value="hong" >
<input type="submit" value="전송">
</form>
</body>
</html>