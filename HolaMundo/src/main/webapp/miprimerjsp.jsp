<%@page import="javax.security.auth.message.callback.PrivateKeyCallback.Request"%>
<%@page import="utility.Calculadora"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hola mundo</title>
</head>
<body>
<%! int numVisitas = 0; %>
	<h1>Calculadora</h1>
	<form method="get">
		<p>Número 1: <input type="number" name="num1" required></p>
		<label>Tipo de operación</label>
		<select name="seleccion" value="suma">
			<option value="Suma" name="suma">Suma</option>
			<option value="Resta" name="resta">Resta</option>
		</select>
		<p>Número 2:<input type="number" name="num2" required></p>
		<button type="submit" name="enviar">Obtener resultado</button>
	</form>

	<%
		int num1 = request.getParameter("num1") != null ? Integer.valueOf(request.getParameter("num1")) : 0;
		int num2 =  request.getParameter("num2") != null ? Integer.valueOf(request.getParameter("num2")) : 0;
		String seleccion = request.getParameter("seleccion") != null ? request.getParameter("seleccion"): "suma";
		out.println(String.format("El resultado de es %s",Calculadora.calcular(num1, num2, seleccion)));	
	%>
</body>
</html>