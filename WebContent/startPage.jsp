<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="ua.partner.suzuki.domain.dealer.Dealer"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com - No Copyright -->
<title>Suzuki Welcome Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<jsp:useBean id="dealer" class="ua.partner.suzuki.domain.dealer.Dealer"
		scope="request">
</jsp:useBean>
	
<body>
	<header>
		<div class="container">
			<a href="startPage.jsp"> <img src="img/logo.png" class="logo"
				alt="Suzuki Marine" style="width: 200px; height: 100px; border: 0;">
			</a>
			<nav class="navbar">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#topNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse" id="topNavbar">
					<p class="navbar-text">
						Добро пожаловать, <jsp:getProperty property="name" name="dealer" />
					</p>
					<ul class="nav navbar-nav top-nav">
						<li><a href="#"><span
								class="glyphicon glyphicon-question-sign"></span> Помощь</a></li>
						<li class="disabled"><a href="#contact"> <span
								class="glyphicon glyphicon-user"></span> Профиль
						</a></li>
						<li><a href="login.jsp"><span
								class="glyphicon glyphicon glyphicon-log-out"></span> Выход</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<nav class="navbar-default">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"> <span
							class="glyphicon glyphicon-info-sign"></span> Информация<span
							class="caret"></span></a>
						<ul class="dropdown-menu drop-menu">
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-exclamation-sign"></span> Бюллетени</a></li>
							<li><a href="warrantyPolicy.jsp"><span
									class="glyphicon glyphicon-info-sign"></span> Гарантийная
									политика</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-plus"></span>
							Реализация <span class="caret"></span></a>
						<ul class="dropdown-menu drop-menu">
							<li><a href="warehouse"><span
									class="glyphicon glyphicon-th-large"></span> База техники</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-th-list"></span> Список техники</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-cog"></span>
							Гарантия <span class="caret"></span></a>
						<ul class="dropdown-menu drop-menu">
							<li><a href="#"><span class="glyphicon glyphicon-globe"></span>
									Гарантийная регистрация</a></li>
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-wrench"></span> Технический Отчет</a></li>
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-tasks"></span> Список Техотчетов</a></li>
							<li class="disabled"><a href="#"><span
									class="glyphicon glyphicon-filter"></span> Гарантийные
									рекламации</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-hourglass"></span> Гарантийные
									кампании</a></li>
							<li><a href="#"><span
									class="glyphicon glyphicon-duplicate"></span> Шаблоны кампании</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-cog"></span>
							Обслуживание <span class="caret"></span></a>
						<ul class="dropdown-menu drop-menu">
							<li><a href="#"><span class="glyphicon glyphicon-wrench"></span>
									Прохождение ТО</a></li>
							<li><a href="unitHistory.jsp"><span
									class="glyphicon glyphicon-eye-open"></span> История единицы</a></li>
						</ul></li>
					<li class="disabled"><a href="#pricing"><span
							class="glyphicon glyphicon-circle-arrow-down"></span> Центр
							загрузок</a></li>
					<li class="disabled"><a href="#contact"><span
							class="glyphicon glyphicon-user"></span> Профиль</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<p>Введите Серийный номер для проверки истории единицы</p>
		<form action="unitHistory.jsp" method="post" class="form-inline">
			<div class="input-group">
				<span class="input-group-addon" id="basic-addon1">VIN</span> <input
					type="text" class="form-control" pattern="\d{5}(K|P|F|Z)?-\d{6}$"
					size="40" placeholder="Серийный номер" required>
				<div class="input-group-btn">
					<button type="submit" class="btn btn-danger">Проверить</button>
				</div>
			</div>
		</form>
	</div>

	<footer class="container-fluid text-center">
		<p>
			Разработан <a href=#>alex</a>
		</p>
	</footer>

</body>
</html>
