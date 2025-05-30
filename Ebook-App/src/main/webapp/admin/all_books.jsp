<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.DAO.BookDAOImpl" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entity.BookDtls" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Просмотр книг</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Все книги</h3>

	<table class="table table-striped">
		<thead style="background-color: grey; color: white;">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Обложка</th>
				<th scope="col">Название книги</th>
				<th scope="col">Автор</th>
				<th scope="col">Цена</th>
				<th scope="col">Категория</th>
				<th scope="col">Статус</th>
				<th scope="col">Действие</th>

			</tr>
		</thead>
		<tbody>
			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookId()%></td>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 60px; height: 100px"></td>
				<td><%=b.getBookName()%></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="#" class="btn btn-sm btn-primary">Изменить</a> <a
					href="#" class="btn btn-sm btn-danger">Удалить</a></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
</body>
<%@include file="footer.jsp"%>
</html>