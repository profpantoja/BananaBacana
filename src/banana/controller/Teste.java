package banana.controller;

import java.util.ArrayList;

import banana.dao.ProdutoDao;
import banana.model.Produto;

public class Teste {

	public static void main(String[] args) {
		ArrayList<Produto> produtos = new ProdutoDao().BuscarProdutosPorDescricao("a");
		System.out.println("-----> " + produtos.size());
	}

}
