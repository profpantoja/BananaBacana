<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bananaStyle.css">

<meta charset="ISO-8859-1">
<title>Banana Bacana</title>
</head>
<body>
	<nav class="bananaNav">
		<ul>
			<li><span style="color: yellow">BananaBacana</span></li>
			<li><img src="img/bacana.png" height="20px"></li>
			<li><a href="cadastrarProduto.jsp">Cadastrar Produto</a></li>
			<li><a href="consultarProduto.jsp">Consultar Produto</a></li>
		</ul>
	</nav>
	<main class="bananaMain">
		<form action="cadastrarProduto" method="post" class="bananaForm">
			<div>
				<label><strong>Descrição:</strong></label><input type="text"
					name="descricao">
			</div>
			<div>
				<label><strong>Quantidade:</strong></label><input type="text"
					name="quantidade">
			</div>
			<div>
				<label><strong>Preço:</strong></label><input type="text"
					name="preco">
			</div>

			<label><strong>Disponível On-Line:</strong></label><input
				type="checkbox" name="online" value="true"> <br>
			<div>
				<input id="bananaButton" type="submit" name="salvar"
					value="Cadastrar Produto">
			</div>
			
			<div>
				<%
				String mensagem = (String) request.getAttribute("mensagem");
				if (mensagem != null)
					out.print(mensagem);
				%>
			</div>
		</form>
	</main>
</body>
</html>