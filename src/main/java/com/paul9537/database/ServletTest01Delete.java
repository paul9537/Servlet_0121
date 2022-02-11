package com.paul9537.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paul9537.common.MysqlService;

@WebServlet("/db/test01_delete")
public class ServletTest01Delete extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String deleteQuery = "DELETE FROM `favorites` WHERE `id` =" + id;
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		mysqlService.update(deleteQuery);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test01_1.jsp");
		
		
	}
	
}
