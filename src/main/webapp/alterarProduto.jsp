<%@page import="banana.model.Produto"%>
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
		<form action="alterarProduto" method="post" class="bananaForm">
			<%
			Produto produto = null;
			if (request.getAttribute("produto") != null) {
				produto = (Produto) request.getAttribute("produto");
			}
			%>
			<input type="hidden" name="id" value="<%out.print(produto.getIdProduto());%>">
			<div>
				<label><strong>Descrição:</strong></label><input type="text"
					name="descricao" value="<%out.print(produto.getDescricao());%>">
			</div>
			<div>
				<label><strong>Quantidade:</strong></label><input type="text"
					name="quantidade" value="<%out.print(produto.getQuantidade());%>">
			</div>
			<div>
				<label><strong>Preço:</strong></label><input type="text"
					name="preco" value="<%out.print(produto.getPreco());%>">
			</div>

			<label><strong>Disponível On-Line:</strong></label><input
				type="checkbox" name="online" value="true"
				<%if (produto.isOnLine()) {
	out.print("checked");
}%>> <br>
			<div>
				<input id="bananaButton" type="submit" name="alterar"
					value="Alterar Produto">
			</div>
			<div>
				<input type="hidden" name="id">
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