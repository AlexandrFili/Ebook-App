<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Добавление книги</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5;">
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Добавление книги</h4>

						<form action="login" method="post">

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
									id="inputState" name="btype" class="form-control">
									<option selected>--выбрать--</option>
									<option value="New">Новая книга</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Статус книги</label> <select
									id="inputState" name="bstatus" class="form-control">
									<option selected>--выбрать--</option>
									<option value="Active">В наличии</option>
									<option value="Inactive">Нет в наличии</option>
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