<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
%>

	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= request.getParameter("nickname") %></td>
		</tr>
		<tr>
			<th>동물</th>
			<td> <%= request.getParameter("animal") %></td>
		</tr>
		<tr>
			<th>음식</th>
			<td> <%= request.getParameter("food") %></td>
		</tr>
	</table>


</body>
</html>