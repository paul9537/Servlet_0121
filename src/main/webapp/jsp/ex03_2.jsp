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

	String[] foods = request.getParameterValues("food");
	// 민트초코, 하와이안피자
	String foodString = "";
	for(int i = 0; i < foods.length; i++) {
		foodString += foods[i] + ",";
	}
	
%>

	<table border="1">
		<tr>
			<th>별명</th>
			<td> <%= request.getParameter("nickname") %></td>
		</tr>
		
		<tr>
			<th>동물</th>
			<td> <%= request.getParameter("animal") %></td>
		</tr>
		
		<tr>
			<th>음식</th>
			<td> <%= foodString %></td>
		</tr>
		
		<tr>
			<th>과일</th>
			<td> <%= request.getParameter("fruit") %></td>
		</tr>
	</table>


</body>
</html>