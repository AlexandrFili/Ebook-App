<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Добавление книги</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp"/>
	</c:if>
	
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Добавление книги</h4>
						
						
						<c:if test="${not empty succMsg}">
							<h5 class="text-center text-success">${succMsg }</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty failedMsg}">
							<h5 class="text-center text-danger">${failedMsg }</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
				
						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputBook1">Название книги</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputBook1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputAutor1">Имя автора</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputAutor1" aria-describedby="emailHelp">
							</div>
							<div class="form-group">
								<label for="exampleInputPrice1">Цена</label> <input name="price"
									type="number" class="form-control" id="exampleInputAutor1">
							</div>
							<div class="form-group">
								<label for="inputState">Категория книги</label> <select
									id="inputState" name="categories" class="form-control">
									<option selected>--выбрать--</option>
									<option value="Новое">Новая книга</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Статус книги</label> <select
									id="inputState" name="bstatus" class="form-control">
									<option selected>--выбрать--</option>
									<option value="В наличии">В наличии</option>
									<option value="Нет в наличии">Нет в наличии</option>
								</select>
							</div>

							<div class="form-group">
								<label for="exampleFormControlFile1">Загрузить обложку</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControlFile1">
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Добавить</button>
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