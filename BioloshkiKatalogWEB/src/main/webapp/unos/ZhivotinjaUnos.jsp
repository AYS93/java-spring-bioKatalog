<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unos nove životinje</title>
</head>
<body>
	<form action="/BioloshkiKatalog/zhivotinje/addZhivotinja" method="post">
		<table>
			<tr>
				<td>Tip životinje:</td>
				<td>
					<select name="tip">
						<option value="sisar">sisar</option>
  						<option value="ptica">ptica</option>
  						<option value="riba">riba</option>
  						<option value="reptil">reptil</option>
  						<option value="vodozemac">vodozemac</option>
  						<option value="arahnida">arahnida</option>
  						<option value="insekt">insekt</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Domaći naziv:</td>
				<td><input type="text" name="domNaziv"></td>
			</tr>
			<tr>
				<td>Latinski naziv:</td>
				<td><input type="text" name="latNaziv"></td>
			</tr>
			<tr>
				<td>Opis:</td>
				<td><input type="text" name="opis"></td>
			</tr>
			<tr>
				<td>Neka slika, fotografija (link):</td>
				<td><input type="text" name="foto"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Unesi u katalog"></td>
			</tr>
		</table>
	</form>
	${poruka }
	<br/><a href="/BioloshkiKatalog">Nazad</a>
</body>
</html>