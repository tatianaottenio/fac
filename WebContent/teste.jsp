<%@page import="br.com.fac.teste.TesteController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teste</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/TesteServlet" method="POST">
		<input type="text" name="txtNome"/>
		<button type="submit">Salvar</button>
	</form>
	<table>
	<tr>
		<th>Nome</th>
	</tr>
<% 
	TesteController testeController = new TesteController();

	for ( String n : testeController.listar() ) {
%>
	<tr>
		<td><%=n%></td>
	</tr>
<%
	}
	
%>
	</table>
</body>
</html>