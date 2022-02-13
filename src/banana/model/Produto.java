package banana.model;

import java.util.ArrayList;

import banana.dao.ProdutoDao;

public class Produto {

	private int idProduto;
	private String descricao;
	private int quantidade;
	private double preco;
	private boolean onLine;

	public Produto() {

	}

	public Produto(String descricao, int quantidade, double preco, boolean onLine) {
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.preco = preco;
		this.onLine = onLine;
	}

	public Produto(int idProduto, String descricao, int quantidade, double preco, boolean onLine) {
		this.idProduto = idProduto;
		this.descricao = descricao;
		this.quantidade = quantidade;
		this.preco = preco;
		this.onLine = onLine;
	}

	public int getIdProduto() {
		return this.idProduto;
	}

	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public boolean isOnLine() {
		return onLine;
	}

	public void setOnLine(boolean onLine) {
		this.onLine = onLine;
	}

	public void salvar() {
		new ProdutoDao().cadastrarProduto(this);
	}
	
	public void excluir(int idProduto) {
		new ProdutoDao().ExcluirProduto(idProduto);
	}

	public void alterar() {
		new ProdutoDao().AlterarProduto(this);
	}
	
	public Produto buscarProdutoPorId(int idProduto) {
		return new ProdutoDao().BuscarProdutoPorId(idProduto);
	}
	
	public ArrayList<Produto> buscarProdutosPorDescricao(String descricao) {
		return new ProdutoDao().BuscarProdutosPorDescricao(descricao);
		
	}
}
