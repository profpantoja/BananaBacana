<%@page import="banana.model.Produto"%>
<%@page import="java.util.List"%>
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
	<div class="bananaForm">
		<form action="buscarProdutos" method="post">
			<div>
				<label><strong>Busca pela Descrição:</strong></label><input
					type="text" name="descricao">
			</div>
			<br>
			<div class="bananaColumn">
				<input id="bananaButton" type="submit" name="salvar"
					value="Consultar Produto">
			</div>
			<div class="bananaColumn">
				<%
				String mensagem = (String) request.getAttribute("mensagem");
				if (mensagem != null)
					out.print(mensagem);
				%>
			</div>
		</form>
		<%if (request.getAttribute("produtos") != null) {
			List<?> produtos = (List<?>) request.getAttribute("produtos");
			for (int contador = 0; contador <= (produtos.size() - 1); contador++) {
				Produto produto = (Produto) produtos.get(contador);%>
		<form action="modificarProduto" method="post">
			<div class="bananaDivMother">
				<div class="bananaDivItem">
					<div class="bananaColumn">
						<span style="font-weight: bold">Id</span> 
						<span><%out.print(produto.getIdProduto());%></span> 
						<input type="hidden" name="id" value="<%out.print(produto.getIdProduto());%>">
					</div>
					<div class="bananaColumn">
						<span style="font-weight: bold">Descrição</span>
						<span><%out.print(produto.getDescricao());%></span>
					</div>
					<div class="bananaColumn">
						<span style="font-weight: bold">Quantidade</span>
						<span><%out.print(produto.getQuantidade());%>
						</span>
					</div>
					<div class="bananaColumn">
						<span style="font-weight: bold">Preço</span> 
						<span><%out.print(produto.getPreco());%></span>
					</div>
					<div class="bananaColumn">
						<span style="font-weight: bold">On-Line</span> 
						<span><%out.print(produto.isOnLine());%></span>
					</div>
					<div class="bananaColumn">
						<input id="bananaItemButton" type="submit" name="alterar"
							value="Alterar"> <input id="bananaItemButton"
							type="submit" name="apagar" value="Apagar">
					</div>
				</div>
			</div>
		</form>
		<%
		}
		}
		%>
	</div>
	</main>
</body>
</html>