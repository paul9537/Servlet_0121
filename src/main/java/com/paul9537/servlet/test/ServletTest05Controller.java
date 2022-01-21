package com.paul9537.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class ServletTest05Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		String numberString = request.getParameter("number");
		int number = Integer.parseInt(numberString);
		
//		number + " X " + i + " = " number * i
		
		for(int i = 1; i <= 9; i++) {
			out.println(number + " X " + i + " = " + number * i);
		}
//		
		
		
		
	}
}
