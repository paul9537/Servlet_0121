package com.paul9537.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paul9537.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class ServletDBEx02Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 삭제
		// DELETE FROM `new_user` WHERE `id` = 5;
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String deleteQuery = "DELETE FROM `new_user` WHERE `id` = " + id;
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		mysqlService.update(deleteQuery);
		
		response.sendRedirect("/db/ex02_1.jsp");
	}
	
}
