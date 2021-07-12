<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<jsp:useBean id="bean" class="FormTest.Imsi" scope="page"/>    
<jsp:setProperty property="*" name="bean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
name:<input type="text" name="name" value="${bean.name }" ><br>
address:<input type="text" name="address" value="${bean.address }" ><br>
<input type="submit" value="전송">
</form>
</body>
</html>