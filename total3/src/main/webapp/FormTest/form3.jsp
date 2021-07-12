<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
public class Imsi{
	 String name;
	 String address;
	 
	 public void setName(String name){
		 this.name = name;
	 }
	 public String getName(){
		 return name;
	 }
	 public void setAddress(String address){
		 this.address = address;
	 }
	 public String getAddress(){
		 return address;
	 }
}
%>
<%
Imsi imsi = new Imsi();
imsi.setName("hong");
imsi.setAddress("청학동");
request.setAttribute("imsi", imsi);
request.getRequestDispatcher("form_proc3.jsp").forward(request, response);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/update">
name:<input type="text" id="name" name="name" value="hong" disabled><br>
address:<input type="text" id="address" name="address" value="중랑구" disabled><br>
<input type="submit" value="전송">
</form>
</body>
</html>