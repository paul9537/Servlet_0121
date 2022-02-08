<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<header class="d-flex">
			<div class="logo col-2 d-flex align-items-center">
				<h1 class="text-success">Melong</h1>
			</div>
			
			<div class="search col-10 d-flex align-items-center">
				<div class="col-5">
					<form method="get" action="/jspTemplate/test02/main2.jsp">
					<input type="text" class="form-control" name="title">
						<div class="input-group-append">
							<button class="btn btn-success" type="submit">검색</button>
						</div>
					</form>
				</div>
			</div>
		</header>