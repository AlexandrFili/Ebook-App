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
<title>Все новые книги</title>
<%@include file="all_component/allCSS.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/b.jpg");
}

.crd-ho:hover {
	background-color: #f3edf5;
	"
}
</style>

</head>
<body style="background-color: #f3e5f5;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3">


				<%
				BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list2 = dao2.getAllNewBooks();
				for (BookDtls b : list2) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho mt-3">
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
									class="fa-solid fa-cart-shopping"></i></a> <a href=""
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
</body>
</html>