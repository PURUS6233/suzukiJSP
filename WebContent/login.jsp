<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<LINK rel="SHORTCUT ICON" href="favicon.ico">
<meta HTTP-EQUIV="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to SUZUKI</title>
</head>

<script LANGUAGE="JAVASCRIPT">
	function ValidateInput() {

		if (document.frmLogin.userID.value.length == 0) {
			alert("Please type your user ID");
			return false;
		}

		if (document.frmLogin.password.value.length == 0) {
			alert("Please type your password");
			return false;
		}
		return true;
	}
</script>

<body style="FONT-SIZE: 12pt; FONT-FAMILY: SuzukiPROBold"
	onLoad="document.forms[0].userID.focus()">
	<table width="98%">
		<tr height="220">
			<td>

				<div style="Z-INDEX: 1; left: 55px; position: absolute; top: 30px">
					<table border="1" cellpadding="0" cellspacing="0" width="180"
						height="180" style="BACKGROUND-COLOR: #003145">
						<tr>
							<td align="center" valign="bottom"><font
								style="FONT-SIZE: 40pt; color: white; font-family: SuzukiPROHeadline">SUZUKI</FONT>
							</td>
						</tr>
					</table>
				</div>
				<div style="Z-INDEX: 1; left: 260px; position: absolute; top: 30px">
					<table border="0" cellpadding="0" cellspacing="0" height="180"
						style="BACKGROUND-COLOR: #ffffff">
						<tr>
							<td align="right" valign="bottom" nowrap><font
								style="FONT-WEIGHT: bolder; font-size: 40pt; color: blue; font-style: italic; font-family: Times New Roman">MARINE
									SERVICE&nbsp;</font></td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<table border="0" width="100%" style="FONT-SIZE: 12pt">
					<tr>
						<td align="center" nowrap>
							<div
								style="Z-INDEX: 6; left: 230px; position: absolute; top: 240px">
								<span style="FONT-SIZE: 16pt; font-family: SuzukiPROBold">Введите
									Логин и Пароль, затем нажмите "Войти".</span>
							</div>
						</td>
					</tr>
					<tr>
						<td align="center"><br>
							<div
								style="Z-INDEX: 3; left: 600px; position: absolute; top: 425px">
								<table border="0" style="FONT-SIZE: 12pt">
									<tr>
										<td><img src="img/logo.png" height=117 alt="Way of Life!"
											width=234></td>
									</tr>
								</table>
							</div>
							<form name="frmLogin" action="login" method="post"
								onsubmit="return ValidateInput()">
								<div
									style="Z-INDEX: 4; left: 350px; position: absolute; TOP: 300px; background-color: white">
									<table border="0" style="FONT-SIZE: 14pt">
										<tr>
											<td WIDTH="120">Логин</td>
											<td><input type="text" name="userID" size="13"
												maxlength="20" style="FONT-SIZE: 16pt"></td>
										</tr>
										<tr>
											<td>Пароль</td>
											<td><input type="password" name="password" size="13"
												maxlength="20" style="FONT-SIZE: 16pt"></td>
										</tr>
										<tr>
											<td colspan="2" align="center"><br> <input
												type="submit" name="B1" value="Войти"
												style="FONT-SIZE: 12pt"></td>
										</tr>
									</table>
								</div>
							</form></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>
