package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.boxiot.model.ItemModo;
import br.com.boxiot.model.Modo;


@Repository
public class ModoDAO {
	
	@Autowired
	private ItemModoDAO itmoDAO;

	@PersistenceContext
	private EntityManager manager;
	
	public int save(Modo modo) {
		if(modo.getId() != null) {
			manager.merge(modo);
		} else {
			manager.persist(modo);	
		}
		
		return modo.getId();
	}

	public void save(Modo modo, List<ItemModo> listItemModo) {
		
		if(modo.getId() != null) {
			manager.merge(modo);
			itmoDAO.excluirPorModo(modo.getId());
		} else {
			manager.persist(modo);	
		}
		
		itmoDAO.saveList(listItemModo,modo.getId());
	}

	public List<Modo> list() {
		return manager
				.createQuery("select distinct(m) from Modo m where m.excluido = false  ORDER BY m.descricao", Modo.class)
				.getResultList();
	}

	public Modo obterModo(int id) {
		return manager
				.createQuery("select distinct(m) from Modo m where m.id = "+id+" and m.excluido = false", Modo.class)
				.getSingleResult();
	}
	
	public void delete(Modo modo) {
		manager.remove(modo);
	}

}
