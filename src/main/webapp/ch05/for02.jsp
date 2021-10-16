<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 		<tr> -->
	<!-- 			<th colspan='13'>九九乘法表</th> -->
	<!-- 		</tr> -->
	<!-- 		<tr bgcolor='gold'> -->
	<!-- 			<td>2</td> -->
	<!-- 			<td>3</td> -->
	<!-- 			<td>4</td> -->
	<!-- 			<td>5</td> -->
	<!-- 			<td>6</td> -->
	<!-- 			<td>7</td> -->
	<!-- 			<td>8</td> -->
	<!-- 			<td>9</td> -->
	<!-- 			<td>first</td> -->
	<!-- 			<td>last</td> -->
	<!-- 			<td>index</td> -->
	<!-- 			<td>count</td> -->
	<!-- 		</tr> -->
	<c:forEach var='a' begin='1' end='9' step='1' varStatus='vs'>
		<c:if test='${vs.first}'>
			<c:out value="<table border='1'>" escapeXml="false" />
			<tr>
				<th colspan='8'>九九乘法表</th>
				<th>first</th>
				<th>last</th>
				<th>單價</th>
				<th>數量</th>
				<th>金額小計</th>
			</tr>

		</c:if>
		<c:choose>
			<c:when test='${vs.count % 3 == 1}'>
				<c:set var='color' value='#B9FCA6' />
			</c:when>
			<c:when test='${vs.count % 3 == 2}'>
				<c:set var='color' value='#FAFCA6' />
			</c:when>
			<c:otherwise>
				<c:set var='color' value='#A6FCF6' />
			</c:otherwise>
		</c:choose>
		<tr bgcolor='${color}'>
			<c:forEach var='t' begin='2' end='9' step='1'>
				<td>${t}*${a}=${t*a}</td>
			</c:forEach>
			<td>${vs.first}</td>
			<td>${vs.last}</td>
			<td>${vs.index}</td>
			<td>${vs.count}</td>
			<td>${vs.count * vs.index}</td>
			<c:set var="sum" value='${sum + vs.count * vs.index}' />
		</tr>
		<c:if test='${vs.last}'>
			<tr>
				<th colspan='12' align='center'>金額總計</th>
				<td>${sum}</td>
			</tr>
			<c:out value="</table>" escapeXml="false" />
		</c:if>

	</c:forEach>

</body>
</html>