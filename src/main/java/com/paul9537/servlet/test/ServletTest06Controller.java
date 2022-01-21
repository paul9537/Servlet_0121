package com.paul9537.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
//		String number1String = request.getParameter("number1");
//		int number1= Integer.parseInt(number1String);
//		String number2String = request.getParameter("number2");
//		int number2 = Integer.parseInt(number2String);
//		{"addition":136, "subtraction":105}
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int addition = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		int division = number1 / number2;
		
//		{"addition":123, "subtraction":54, "multiplication":123, "division":130}
		
		out.println("{\"addition\":" + addition + ", \"subtraction\":" + subtraction + ", "
				+ "\"multiplication\":" + multiplication + ", \"division\":" + 130 + "}");
		
		
	}
}
