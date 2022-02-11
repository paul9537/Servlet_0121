<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.paul9537.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HONG당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style>
		header {
			height:90px;
			background-color:coral;
		}
		
		nav {
			height:60px;
			background-color:coral;
		}
		
		footer {
			height:50px;
		}
		
		section > .content {
			height:300px;
			width:350px;
		}
		
		.seller {
			color:coral;
		}
		
		.item-image {
			height:200px;
			width:330px;
		}
		.content:hover {
			background-color:coral;
		}
	</style>

</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
			
		String query =  "SELECT seller.nickname, used_goods.title, used_goods.price, used_goods.picture\r\n"
				+ "FROM `seller`\r\n"
				+ "JOIN `used_goods`\r\n"
				+ "ON seller.id = used_goods.sellerId;\r\n"
				+ "";
		
		ResultSet resultSet = mysqlService.select(query);
	%>

	<div class="container">
		
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<section>
			<section class="main-content d-flex flex-wrap justify-content-center align-items-center">
			
				<% while(resultSet.next()) { %>
				<div class="content border border-warning p-2 mt-4 mr-2">
					
					<div class="image-box">
						<div class="item-image">
							<% if(resultSet.getString("used_goods.picture") == null) { %>
							<h4 class="text-secondary">이미지 없음</h4>
							<% } else { %>
							<img width="330" height="200" src="<%= resultSet.getString("used_goods.picture") %>" alt="사진">
							<% } %>
						</div>
					</div>
					
					<div class="mt-2">
						<div class="text-weight-bold"><%= resultSet.getString("used_goods.title") %></div>
						<div class="text-secondary"><%= resultSet.getInt("used_goods.price") %>원</div>
						<div class="seller"><%= resultSet.getString("seller.nickname") %></div>
					</div>
					
				</div>
				<% } %>
				
			</section>
		</section>
		<jsp:include page="footer.jsp" />
		
	</div>



</body>
</html>