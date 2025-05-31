<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.BookDtls"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Главная страница</title>
<%@include file="all_component/allCSS.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b.jpg");
	height: 8vh;
	width: 100%;
	background-size: cover;
	background-repeat: no repeat;
}

.crd-ho:hover {
	background-color: #f3edf5;
	"
}
</style>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img"></div>

	<%@ page import="java.sql.Connection"%>
	<%@ page import="com.DB.DBConnect"%>
	<%
	Connection conn = DBConnect.getConn();
	out.println(conn);
	%>

	<!-- Начало раздела со Свежими книгами -->

	<div class="container">
		<h3 class="text-center">Книги в наличии</h3>
		<div class="row">


			<%
			BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list2 = dao2.getRecentBooks();
			for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>
							Категория:
							<%=b.getBookCategory()%>
						<p />
						<div class="row">
							<a href="" class="bt btn-danger btn-sm ml-4">Добавить в <i
								class="fa-solid fa-cart-shopping"></i></a> <a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="bt btn-success btn-sm ml-1"><i
								class="fa-solid fa-eye"></i></a> <a href=""
								class="bt btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
								class="fa-solid fa-ruble-sign"></i></a>
						</div>

					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>

	</div>

	<div class="text-center mt-2">
		<a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">Смотреть все</a>
	</div>

	<!-- Конец раздела со Свежими книгами -->

	<hr>

	<!-- Начало раздела с Новыми книгами -->

	<div class="container">
		<h3 class="text-center">Новые книги</h3>
		<div class="row">


			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getNewBook();
			for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p>

							<%
							if (b.getBookCategory().equals("Б/У")) {
							%>
						
						<div class="row">
							Категория:
							<%=b.getBookCategory()%>
							<a href="view_book.jsp?bid=<%=b.getBookId() %>" class="bt btn-success btn-sm ml-1"><i
								class="fa-solid fa-eye"></i></a> <a href=""
								class="bt btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
								class="fa-solid fa-ruble-sign"></i></a>
						</div>
						<%
						} else {
						%>
						Категория:
						<%=b.getBookCategory()%>
						<p />
						<div class="row">
							<a href="" class="bt btn-danger btn-sm ml-4">Добавить в <i
								class="fa-solid fa-cart-shopping"></i></a> <a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="bt btn-success btn-sm ml-1"><i
								class="fa-solid fa-eye"></i></a> <a href=""
								class="bt btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
								class="fa-solid fa-ruble-sign"></i></a>
						</div>

						<%
						}
						%>

					</div>
				</div>
			</div>
			<%
			}
			%>


		</div>

	</div>

	<div class="text-center mt-2">
		<a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">Смотреть все</a>
	</div>

	<!-- Конец раздела с Новыми книгами -->

	<hr>

	<!-- Начало раздела с Б/У книгами -->

	<div class="container">
		<h3 class="text-center">Б/У книги</h3>
		<div class="row">



			<%
			BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list3 = dao.getOldBooks();
			for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p><%=b.getBookName()%></p>
						<p><%=b.getAuthor()%></p>
						<p><%=b.getBookCategory()%></p>
						
						<div class="row">
							<a href="view_book.jsp?bid=<%=b.getBookId() %>"
								class="bt btn-success btn-sm ml-5"><i
								class="fa-solid fa-eye"></i></a> <a href=""
								class="bt btn-danger btn-sm ml-1"><%=b.getPrice()%> <i
								class="fa-solid fa-ruble-sign"></i></a>
						</div>
						
					</div>
				</div>

			</div>

			<%
			}
			%>


		</div>

	</div>

	<div class="text-center mt-2">
		<a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">Смотреть все</a>
	</div>

	<!-- Конец раздела с Б/У книгами -->

	<%@include file="all_component/footer.jsp"%>

</body>

</html>