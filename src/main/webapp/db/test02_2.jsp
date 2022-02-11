<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.paul9537.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<style>
		header {
			height:90px;
			background-color:#E78111;
		}
		
		nav {
			height:60px;
			background-color:#E78111;
		}
		
		footer {
			height:50px;
		}
		
		section {
			height:500px;
		}
		
		section > .content {
			width:300px;
			border-color:#E78111;
			
		}
		
		.seller {
			color:#E78111;
		}

	</style>
</head>
<body>

	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT seller.id, seller.nickname, used_goods.title, used_goods.price, used_goods.description, used_goods.picture\r\n"
				+ "FROM `seller`\r\n"
				+ "JOIN `used_goods`\r\n"
				+ "ON seller.id = used_goods.sellerId;";
		
		ResultSet resultSet = mysqlService.select(query);

		
	%>

	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<section>
			<div class="item-upload mt-5 ml-5 mr-5">
				<div class="display-4">물건 올리기</div>
				
				<form method="post" action="/db/test02_insert">
				
					<div class="d-flex mt-5">
						<select class="id-selector form-control col-3">
							<option value="">-아이디 선택-</option>
							<% while(resultSet.next()) { %>
							<option value="<%= resultSet.getInt("seller.id") %>"><%= resultSet.getString("seller.nickname") %></option>
							<% } %>
						</select>
						<input type="text" class="title-input form-control col-5 ml-5" placeholder="제목" name="<%= resultSet.getString("used_goods.title") %>">
						<div class="input-group ml-5">
							<input type="text" class="price-input form-control" placeholder="가격" name="<%= resultSet.getString("used_goods.price") %>">
							<span class="input-group-text">원</span>
						</div>
					</div>
					
					<textarea rows="8" class="description-input form-control mt-3" name="<%= resultSet.getString("used_goods.description") %>"></textarea>
					
					<div class="image-input input-group mt-3">
						<span class="input-group-text">이미지 url</span>
						<input type="text" class="form-control" name="<%= resultSet.getString("used_goods.picture") %>">
					</div>
					
					<button type="submit" class="btn mt-3 col-12">저장</button>
					
				</form>
				
			</div>
		</section>
		<jsp:include page="footer.jsp" />		
	</div>

</body>
</html>