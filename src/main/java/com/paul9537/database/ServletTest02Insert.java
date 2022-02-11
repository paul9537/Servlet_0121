package com.paul9537.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paul9537.common.MysqlService;

@WebServlet("/db/test02_insert")
public class ServletTest02Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String image = request.getParameter("picture");
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "(" + id + ",'" + title + "', '" + price + "', '" + description + "', '" + image + "', now(), now());";

		
		mysqlService.update(insertQuery);
		mysqlService.disconnect();
		
		response.sendRedirect("db/test01_1.jsp");
		
		
	}
	
}
