<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.*"%>
<%@ page import="com.DAO.BookDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.BookDtls"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Редактирование книги</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Редактирование книги</h4>
					

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
						BookDtls b = dao.getBookById(id);
						%>


						<form action="../editbooks" method="post">
							<input type="hidden" name="id" value="<%=b.getBookId()%>">
							<div class="form-group">
								<label for="exampleInputBook1">Название книги</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputBook1" aria-describedby="emailHelp"
									value="<%=b.getBookName()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputAutor1">Имя автора</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputAutor1" aria-describedby="emailHelp"
									value="<%=b.getAuthor()%>">
							</div>
							<div class="form-group">
								<label for="exampleInputPrice1">Цена</label> <input name="price"
									type="number" class="form-control" id="exampleInputAutor1"
									value="<%=b.getPrice()%>">
							</div>



							<div class="form-group">
								<label for="inputState">Статус книги</label> <select
									id="inputState" name="bstatus" class="form-control">
									<%
									if ("Active".equals(b.getStatus())) {
									%>
									<option value="Active">В наличии</option>		
									<option value="Inactive">Нет в наличии</option>						
									<%
									} else {
									%>
									<option value="Inactive">Нет в наличии</option>
									<option value="Active">В наличии</option>	
									<%
									}
									%>
								</select>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Изменить</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@include file="footer.jsp"%>
</html>