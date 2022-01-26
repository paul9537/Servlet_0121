<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 2</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>

<%
String numberString = request.getParameter("number");
int number = Integer.parseInt(numberString);
String[] metric = request.getParameterValues("metric");

String result = "";

for(int i = 0; i < metric.length; i++) {
	String metrics = metric[i];
	if(metric[i].equals("in")) {
		double inch = number / 2.54;
		result += inch + "in <br>";
	} else if(metric[i].equals("yd")) {
		double yard = number / 91.44;
		result += yard + "yd <br>";
	} else if(metric[i].equals("ft")) {
		double feet = number / 30.48;
		result += feet + "ft <br>";
	} else if(metric[i].equals("m")) {
		double meter = number / 100;
		result += meter + "m";
	}
}
%>

<div class="container">
	<h1>변환 결과</h1>
	<h3><%=number %>cm</h3>
	<hr>
	<h2><%=result %></h2>
</div>


</body>
</html>