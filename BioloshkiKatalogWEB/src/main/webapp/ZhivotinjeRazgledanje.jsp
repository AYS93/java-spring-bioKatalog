<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Katalog - Životinje</title>
<style>
#zhTable {
  border-collapse: collapse;
  width: 100%;
}

#zhTable td, #zhTable th {
  border: 1px solid #ddd;
  padding: 8px;
}

#zhTable tr:nth-child(even){background-color: #f2f2f2;}

#zhTable tr:hover {background-color: #ddd;}

#zhTable th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}

img:hover {
	box-shadow: 0 0 5px 3px rgba(0, 0, 0, 0.5);
}
</style>
</head>
<body>
	<form action="/BioloshkiKatalog/zhivotinje/getZhivotinjeByTip" method="get">
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
				<td><input type="submit" value="Pogledaj sve životinje ovog tipa"></td>
			</tr>
		</table>
	</form>
	<br/>
	
	<c:choose>
	<c:when test="${!empty zhivotinje }">
		<p style="font-size: 16px">Sve životinje tipa: "${tip }":</p>
		<table border="1" id="zhTable">
			<tr>
				<th>Domaći naziv</th>
				<th>Latinski naziv</th>
				<th>Opis</th>
				<th>Sličica</th>
				<th>Ažuriraj informacije</th>
			</tr>
			<c:forEach items="${zhivotinje }" var="zh">
				<tr>
					<td>
						${zh.domaciNaziv }
					</td>
					<td>
						${zh.latinskiNaziv }
					</td>
					<td>
						${zh.opis }
					</td>
					<td>
						<a target="_blank" href="${zh.fotografija }">
							<img src="${zh.fotografija }" width="100" height="100" style="border:5px solid black"/>
						</a>
					</td>
					<td>
						<a href="/BioloshkiKatalog/zhivotinje/AzhurirajInformacije?idZhivotinja=${zh.idZhivotinja }">Ažuriraj</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</c:when>
	
	<c:otherwise>
		<c:choose>
			<c:when test="${empty tip }">
		
			</c:when>
			<c:otherwise>
				<c:if test="${empty zhivotinje}">
					<p>Za tip "${tip }" u ovom momentu nemamo ništa u katalogu, proverite ponovo kasnije.</p>
				</c:if>
			</c:otherwise>
		</c:choose>
	</c:otherwise>
	</c:choose>
	
	<br/>
	<br/><a href="/BioloshkiKatalog">Nazad</a>
</body>
</html>