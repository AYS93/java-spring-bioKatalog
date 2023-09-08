<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Životinje - Ažuriranje</title>
</head>
<body>
	<c:if test="${empty poruka }">
	Ažuriranje:
	<form action="/BioloshkiKatalog/zhivotinje/AzhurirajInformacije2?idZhivotinja=${zhivotinja.idZhivotinja }" method="post">
		<table>
			<tr>
				<td>Trenutni tip:</td>
				<td>${zhivotinja.tip }</td>
				<td>Novi tip:</td>
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
				<td>Trenutni domaći naziv:</td>
				<td>${zhivotinja.domaciNaziv }</td>
				<td>Novi domaći naziv:</td>
				<td><input type="text" name="domaciNaziv" placeholder="${zhivotinja.domaciNaziv }"></td>
			</tr>
			<tr>
				<td>Trenutni latinski naziv:</td>
				<td>${zhivotinja.latinskiNaziv }</td>
				<td>Novi latinski naziv:</td>
				<td><input type="text" name="latinskiNaziv" placeholder="${zhivotinja.latinskiNaziv }"></td>
			</tr>
			<tr>
				<td>Trenutni opis:</td>
				<td>${zhivotinja.opis }</td>
				<td>Novi opis:</td>
				<td><input type="text" name="opis" placeholder="${zhivotinja.opis }"></td>
			</tr>
			<tr>
				<td>Trenutna fotografija:</td>
				<td>Link: ${zhivotinja.fotografija }</td>
				<td>
					<a target="_blank" href="${zhivotinja.fotografija }">
							<img src="${zhivotinja.fotografija }" width="100" height="100" style="border:5px solid black"/>
					</a>
				</td>
				<td>Nova fotografija:</td>
				<td><input type="text" name="fotografija" placeholder="${zhivotinja.fotografija }"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Ažuriraj"></td>
			</tr>
		</table>
	</form>
	<br/>
	<form action="/BioloshkiKatalog/zhivotinje/IzbrishiZhivotinju?idZhivotinja=${zhivotinja.idZhivotinja }" method="post">
		<table>
			<tr>
				<td>Izbriši ovu životinju iz kataloga: </td>
				<td><input type="submit" value="Izbriši"/></td>
			</tr>
		</table>
	</form>
	</c:if>
	
	<c:if test="${!empty poruka}">
		${poruka }
	</c:if>
	<br/>
	<br/><a href="/BioloshkiKatalog/ZhivotinjeRazgledanje.jsp">Vrati se nazad</a>
</body>
</html>