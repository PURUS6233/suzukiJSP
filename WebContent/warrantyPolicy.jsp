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
<style>
   p {
    text-indent: 20px; /* Отступ первой строки в пикселах */
   }
</style>
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
							<li><a href="login"><span
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

	<div class="panel panel-default">
		<div class="panel-body">
			<h1 class="text-center">ГАРАНТИЙНАЯ ПОЛИТИКА SUZUKI</h1>
			</br>
			<p>SUZUKI гарантирует, что каждый новый мотор из
				транспортировочного контейнера, установленный, обслуженный и
				доставленный дистрибьютором SUZUKI или авторизованным дилером
				SUZUKI, не содержит дефектов материалов, качественно изготовлен и
				будет нормально функционировать при соблюдении следующих условий и
				требований.</p>
			<h4>1) Гарантийный период</h4>
			<p>На подвесные моторы SUZUKI распространяются следующие
				гарантийные периоды начиная с даты розничной продажи или после
				использования мотора в демонстрационных целях.</p>

			<table class="table table-hover">
				<thead>
					<tr class="warning">
						<th>Вид продукции</th>
						<th>Коммерческая эксплуатация (месяцев)</th>
						<th>Эксплуатация в личных целях (месяцев</th>
						<th>Спортивные мероприятия</th>
					</tr>
				</thead>
				<tbody>
					<tr class="info">
						<td>4-х тактные моторы</td>
						<td>12</td>
						<td>36</td>
						<td>Не распространяется</td>
					</tr>
					<tr class="info">
						<td>2-х тактные моторы</td>
						<td>12</td>
						<td>24</td>
						<td>Не распространяется</td>
					</tr>
				</tbody>
			</table>

			<h4>2) Регулярное прохождение технического обслуживания</h4>
			<p>		Неотъемлемое условие гарантийного обслуживания – мотор должен
				эксплуатироваться согласно требованиям руководства пользователя и
				должен проходить регулярное техническое обслуживание на
				авторизованных сервисных центрах. В сервисной книжке пользователя
				обязательно должны делаться отметки о прохождении регулярного ТО.
				Ответственность за соблюдение периодичности выполнения технического
				обслуживания, соответствующая оплата рабочего времени, оплата
				стоимости затраченных расходных материалов и запасных частей
				необходимых для проведения ТО, а также контроль за проставлением
				отметок о проведенном ТО полностью лежит на владельце мотора.</p>
			<h4>3) Не подлежит гарантийному возмещению</h4>
			<p>		Гарантия не распространяется на моторы, которые
				эксплуатировались не по прямому назначению либо небрежно
				эксплуатировались, если были внесены изменения в конструкцию или
				механизм мотора, а также моторы, поврежденные в результате
				несчастных случаев.</p>
			<p>Также к нарушениям гарантийной политики относятся:</p>
			<ul style="list-style-type: disc">
				<li>Использование неоригинальных (не рекомендуемых SUZUKI) запасных
			частей;</li>
				<li>Выполнение ремонта или обслуживания с нарушением правил и
			регламента, что может привести к ухудшению рабочих характеристик или
			сделать мотор не безопасным в эксплуатации;</li>
				<li>Участие в соревнованиях, гоночных заездах.</li>
			</ul>
			<p >	Также гарантия не возмещает не прямые затраты владельца
				связанные с невозможностью использования мотора (на время выполнения
				гарантийного ремонта), затраты на транспортировку мотора к
				ближайшему сервисному центру, затраты на ремонт деталей и узлов не
				являющихся частью подвесного мотора. Гарантия не распространяется на
				эксплуатационные жидкости, горюче смазочные материалы и детали
				которые вышли из строя в результате нормального износа в результате
				исчерпания ресурса, а не в результате производственных дефектов или
				дефектов материалов. Таких, как: Свечи зажигания, топливные фильтры,
				масляные фильтры, места контактов, щетки, предохранители, провода,
				колпачки свечей зажигания, винты, цинковые аноды, крыльчатки водяных
				насосов, шплинты, болты и шайбы, шнур стартера, все резиновые детали
				(за исключением сальников), прокладки и любые масла, смазки и
				жидкости (моторное масло, смазка, бензин и т.п).</p>


			<h4>4) Гарантийный ремонт</h4>
			<p>Гарантийный ремонт выполняется только по ремонту или замене
				дефектных деталей. Все детали замененные при выполнении гарантийного
				ремонта становятся собственностью SUZUKI. Ремонт или замена
				дефектных деталей должны выполняться только дистрибьютором или
				авторизованным дилером SUZUKI. При выполнении гарантийного ремонта
				должны использоваться только оригинальные запасные части SUZUKI. На
				все узлы и детали, замененные при выполнении гарантийного ремонта,
				распространяется гарантия до окончания гарантийного периода на
				изделие.</p>
			<h4>5) Изменения дизайна</h4>
			<p>SUZUKI оставляет за собой право вносить какие-либо изменения в
				дизайн и/или технические характеристики любого мотора или любой
				детали без предварительного предупреждения и без обязательств по
				внесению аналогичных изменений на ранее выпущенные моторы.</p>
			<h4>6) Контроль над запчастями, замененными по гарантии</h4>
			<ul style="list-style-type: disc">
				<li>Запасные части замененные по гарантии должны храниться в
					течение 90 дней со дня окончания ремонта. Дилер, при необходимости,
					должен предоставить запчасти дистрибьютору для проведения
					исследований.</li>
				<li>Дистрибьютор должен предоставить гарантийные запчасти
					SUZUKI в период 90 дней.</li>
				<li>По истечению 90 дневного периода запчасти могут быть
					утилизированы.</li>
				<li>Все запчасти передаваемые дистрибьютором производителю
					должны содержать сопроводительное письмо с отображением следующих
					пунктов:
					<ul>
						<li>Название дилера;</li>
						<li>Номер гарантийного запроса;</li>
						<li>Модель, номер двигателя;</li>
						<li>Название детали;</li>
						<li>Идентификационный номер детали;</li>
						<li>Описание дефекта.</li>
					</ul>
				</li>
				<li>Сопроводительное письмо должно прикрепляться к гарантийной
					запчасти сразу же после выполнения ремонта. Дистрибьютор несет
					ответственность за обеспечение дилеров формами сопроводительных
					писем.</li>
			</ul>
			<h4>7) Принятие окончательного решения о гарантийном возмещении</h4>
			<p>SUZUKI оставляет за собой право принятия окончательного
				решения о возмещении гарантийного ремонта.</p>
			<h4>8) Подача запросов на возмещение гарантийных ремонтов</h4>
			<p>Дистрибьютор подаёт SUZUKI запросы о гарантийном возмещении в
				принятой форме с указанием всей необходимой информации один раз в
				месяц. Однако гарантийный запрос должен быть подан SUZUKI не позже
				чем через 60 дней после окончания ремонта.</p>
			<h4>9) Возмещение гарантийных ремонтов</h4>
			<p>Гарантийные запросы, поданные дистрибьютором, и одобренные SUZUKI возмещаются по
			следующим статьям:</p>
			<ul>
				<li>Оплата труда:
					<p>возмещается из расчета произведение нормы времени (из таблиц
						норм времени SUZUKI) на ставку нормо-часа;</p>
				</li>
				<li>Запасные части.</li>
			</ul>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>
			Разработан <a href=#>alex</a>
		</p>
	</footer>

</body>
</html>
