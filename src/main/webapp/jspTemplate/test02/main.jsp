<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	<style>
		header {
			height:70px;
		}
		
		nav {
			height:50px;
		}
		
		footer {
			height:50px;
		}
	</style>

</head>
<body>
	<%@ include file="data.jsp" %>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<section>
			<article class="artist">
				<div class="artist-box d-flex border border-success p-3">
					<div class="artist-image">
						<img width="150" src="<%= artistInfo.get("photo") %>" alt="사진">
					</div>
					<div class="artist-info ml-3">
						<h3><%= artistInfo.get("name") %></h3>
						<div><%= artistInfo.get("agency") %></div>
						<div><%= artistInfo.get("debute") %> 데뷔</div>
					</div>
				</div>
			</article>
			<article class="music-list my-3">
				<h4>곡 목록</h4>
				<table class="table text-center table-sm">
					<thead>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
						<% for(Map<String, Object> music : musicList) {%>
						<tr>
							<td><%= music.get("id") %></td>
							<td><a href="/jspTemplate/test02/main2.jsp?id=<%= music.get("id") %>"></a> <%= music.get("title") %></td>
							<td><%= music.get("album") %></td>
						</tr>
						<%} %>
					</tbody>
				</table>
								
			</article>
		</section>
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>