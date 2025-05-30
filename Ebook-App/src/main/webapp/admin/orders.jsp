<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Просмотр книг</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Все заказы</h3>

	<table class="table table-striped">
		<thead style="background-color: #483259; color: white;">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Имя</th>
				<th scope="col">Эл. почта</th>
				<th scope="col">Адрес</th>
				<th scope="col">Телефон</th>
				<th scope="col">Название книги</th>
				<th scope="col">Автор</th>
				<th scope="col">Цена</th>
				<th scope="col">Тип оплаты</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Otto</td>

			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Otto</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
				<td>Otto</td>
				<td>@mdo</td>
				<td>@mdo</td>
				<td>Otto</td>
				<td>Otto</td>
			</tr>
		</tbody>
	</table>
</body>
		<%@include file="footer.jsp"%>
</html>