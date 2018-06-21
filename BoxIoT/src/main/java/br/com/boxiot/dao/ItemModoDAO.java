package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.ItemModo;

@Repository
public class ItemModoDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(ItemModo itemModo) {
		if(itemModo.getId() != null) {
			manager.merge(itemModo);
		} else {
			manager.persist(itemModo);	
		}
	}

	public List<ItemModo> list() {
		return manager
				.createQuery("select distinct(i) from ItemModo i where i.excluido = false", ItemModo.class)
				.getResultList();
	}

	public ItemModo obterItemModo(int id) {
		return manager
				.createQuery("select distinct(i) from ItemModo i where i.id = "+id+" and i.excluido = false", ItemModo.class)
				.getSingleResult();
	}
	
	public List<ItemModo> obterPorModo(int idModo) {
		return manager
				.createQuery("select distinct(i) from ItemModo i where i.idModo = " + idModo + " and i.excluido = false", ItemModo.class)
				.getResultList();
	}
	
	public void excluirPorModo(int idModo) {
		manager.createQuery("UPDATE ItemModo im SET im.excluido = true WHERE im.idModo="+idModo).executeUpdate();
	}
	
	public void delete(ItemModo itemModo) {
		manager.remove(itemModo);
	}
	
	public void saveList(List<ItemModo> resultados, int idModo) {
		for(int i = 0; i < resultados.size(); i++) {
			ItemModo itemModo = resultados.get(i);
			itemModo.setIdModo(idModo);
			save(itemModo);
		}
	}

}
