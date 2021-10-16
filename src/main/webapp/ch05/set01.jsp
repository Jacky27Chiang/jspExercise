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
<c:set var='sum' value='0' />
<c:set var='x' value='100' />
<c:set var='y'>
        50
        </c:set>
        <c:set var="sum" value='${x+y}'/>
        x+y= ${sum}<br>
        ${x+y}<br>
        x-y= ${x-y}<br>
        x*y= ${x*y}<br>
        x/y= ${x/y}<br>
</body>
</html>