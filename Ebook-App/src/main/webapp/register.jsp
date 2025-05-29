<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Регистрация</title>
<%@include file="all_component/allCSS.jsp"%>
</head>
<body style="background-color: #f3e5f5">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h2 class="text-center">Регистрация</h2>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session"/>
						</c:if>

						<c:if test="${not empty failedMsg}">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>

						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputName1">Введите имя</label> <input
									type="text" class="form-control" id="exampleInputName1"
									required="required" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Введите почту</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputPhone1">Введите номер телефона</label> <input
									type="number" class="form-control" id="exampleInputPhone1"
									required="required" name="phone">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Введите пароль</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									required="required" name="password">
							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Cогласен с условиями пользования</label>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Зарегистрироваться</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<%@include file="all_component/footer.jsp"%>
</html>