<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Администраторская</title>
<%@include file="allCSS.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-medical fa-4x text-primary"></i><br>
							<h4>Добавить книгу</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-4x text-success"></i><br>
							<h4>Просмотр книг</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-folder-open fa-4x text-warning"></i><br>
							<h4>Заказы</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<div class="card">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-4x text-danger"></i><br>
						<h4>Выйти</h4>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
		<%@include file="footer.jsp"%>
</html>