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
<title>Карточка книги</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="all_component/navbar.jsp"%>

	<%
	int bid = Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
	BookDtls b = dao.getBookById(bid);
	%>

	<div class="container p-3">
		<div class="row p-5">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName()%>"
					style="height: 350px; width: 250px"><br>
				<h3 class="mt-3">
					Название книги: <span class="text-success"><%=b.getBookName()%></span>
				</h3>
				<h3>
					Автор: <span class="text-success"><%=b.getAuthor()%></span>
				</h3>
				<h3>
					Категория: <span class="text-success"><%=b.getBookCategory()%></span>
				</h3>
			</div>


			<div class="col-md-6 text-center p-5 border bg-white">
				<h1><%=b.getBookName()%></h1>
				<div class="row mt-2">
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-money-check-dollar fa-3x"></i>
						<p>Наличные или карта</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-rotate-left fa-3x"></i>
						<p>Возврат</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck-fast fa-3x"></i>
						<p>Бесплатная доставка</p>
					</div>
				</div>

				<%
				if ("Б/У".equals(b.getBookCategory())) {
				%>

				<div class="text-center">
					<a href="index.jsp" class="btn btn-success">Продолжить покупки <i
						class="fa-solid fa-cart-shopping"></i></a> <a href=""
						class="btn btn-danger">200 <i class="fa-solid fa-ruble-sign"></i></a>

				</div>

				<%
				} else {
				%>
				<div class="text-center">
					<a href="" class="btn btn-primary">Добавить в корзину <i
						class="fa-solid fa-cart-shopping"></i></a> <a href=""
						class="btn btn-danger">200 <i class="fa-solid fa-ruble-sign"></i></a>

				</div>

				<%
				}
				%>

			</div>
		</div>
	</div>


	<%@include file="all_component/footer.jsp"%>
</body>
</html>