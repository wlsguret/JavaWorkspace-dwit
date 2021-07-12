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
name:<input type="text" name="name" value="${param.name }" ><br>
address:<input type="text" name="address" value="${param.address }" ><br>
<input type="submit" value="전송">
</form>
</body>
</html>