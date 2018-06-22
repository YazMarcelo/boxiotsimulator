package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Modo;
import br.com.boxiot.model.Usuario;

@Repository
public class ItemDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(Item item) {
		if(item.getId() != null) {
			manager.merge(item);
		} else {
			manager.persist(item);	
		}
	}

	public List<Item> list() {
		return manager
				.createQuery("select distinct(i) from Item i where i.excluido = false ORDER BY i.descricao", Item.class)
				.getResultList();
	}

	public Item obterItem(int id) {
		return manager
				.createQuery("select distinct(i) from Item i where i.id = "+id+" and i.excluido = false", Item.class)
				.getSingleResult();
	}
	
	public void delete(Item item) {
		manager.remove(item);
	}

}
