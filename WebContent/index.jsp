<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.exercise29jsp.model.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>First JSP Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>Prácticas con JSPs</h2>
	
	<%
	for(int j=0;j<=4;j++)
	{
		out.append("<p>");
		out.append(String.format("%d X %d = %d", 4,j,4*j));
		out.append("</p>");
	}
	%>
	<%!int i=12; %>
	<p>
		<%-- Esta línea imprime el valor de i --%>
		El valor de i es: <%=i %>
	</p>
	<hr/>
	<form action="TableResult.jsp" method="post">
		<p>
		<%Users miUsuario = new Users(); 
		miUsuario.setId(request.getParameter("txtId"));
		miUsuario.setName(request.getParameter("txtName"));
		%>
			<label for="txtTable">Table:</label>
			<input class="form-control" type="text" id="txtTable" name="txtTable" value="<%=miUsuario.getId() %>">
		</p>
		<p>
			<label for="txtRange">Range:</label>
			<input class="form-control" type="text" id="txtRange" name="txtRange" value="<%=miUsuario.getName() %>"> 
		</p>
		<p>
			<input class="btn btn-success" type="submit" value="Show Table">
		</p>
	</form>
	<hr/>
	<form class="form-group" action="index.jsp" method="post">
		<p>
			<label for="txtId">Id</label>
			<input class="form-control" type="text" id="txtId" name="txtId" value="0">
		</p>
		<p>
			<label for="txtName">Name</label>
			<input class="form-control" type="text" id="txtName" name="txtName" value="a">
		</p>
		<input class="btn btn-success" type="submit" value="Guardar Datos">
	</form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/script.js"></script>
</body>
</html>