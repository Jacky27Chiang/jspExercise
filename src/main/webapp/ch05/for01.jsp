<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach var='x' begin='1' end='10' step='1'>
${x}<br>
<c:set var="sum" value='${sum+x}'/>
</c:forEach>
1+2+3+.....+9+10=${sum}<br>
</body>
</html>