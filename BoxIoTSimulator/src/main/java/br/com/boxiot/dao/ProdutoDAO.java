package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.Produto;

@Repository
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(Produto produto) {
		manager.persist(produto);
	}

	public List<Produto> list() {
		return manager
				.createQuery("select distinct(p) from Produto p", Produto.class)
				.getResultList();
	}

}