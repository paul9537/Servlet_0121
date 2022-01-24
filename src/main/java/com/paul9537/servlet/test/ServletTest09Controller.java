package com.paul9537.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>입사 지원</title></head>");
		out.println("<body>");
		out.println(name + "님 지원이 완료 되었습니다." + "<hr>");
		out.println("지원 내용" + "<br>");
		out.println(introduce);
		out.println("</body></html");
		
	}
}
