<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>第一個 JSP 程式</title>
</head>
<body>
<%
int times = (int)(Math.random() * 5) + 2;
for (int n = 0; n < times ; n++) {
    out.print("Hello, World, 大家好!<BR>");
} 
%>
</body>
</html>