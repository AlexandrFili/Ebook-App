<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-fluid"
	style="height: 10px; background-color: #ab47bc;"></div>

<div class="container-fluid p-3" style="background-color: #f3e5f5;">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3>
				<i class="fa-solid fa-book"></i> Книжный магазин
			</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Поиск</button>
			</form>
		</div>

		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-success"><i class="fa-solid fa-right-to-bracket"></i> Вход</a> 
			<a href="register.jsp"
				class="btn btn-primary"><i class="fa-solid fa-user"></i> Регистрация</a>
		</div>

	</div>

</div>




<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i></a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"><i
					class="fa-solid fa-house"></i> Главная страница <span
					class="sr-only">(current)</span> </a></li>
			<li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i
					class="fa-solid fa-book-open"></i> Книги в наличии</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_new_book.jsp"><i
					class="fa-solid fa-book-medical"></i> Новые книги</a></li>
			<li class="nav-item active"><a class="nav-link" href="all_old_book.jsp"><i
					class="fa-solid fa-book-open-reader"></i> Б/У книги</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<button class="btn btn-light my-2 my-sm-0" type="submit">
				<i class="fa-solid fa-gear"></i> Настройки
			</button>
			<button class="btn btn-light my-2 my-sm-0 ml-1" type="submit">
				<i class="fa-solid fa-square-phone"></i> Контакты
			</button>

		</form>
	</div>
</nav>