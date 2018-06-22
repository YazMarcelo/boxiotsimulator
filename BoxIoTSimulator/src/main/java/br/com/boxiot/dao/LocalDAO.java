package br.com.boxiot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.boxiot.model.Item;
import br.com.boxiot.model.Local;
import br.com.boxiot.model.Usuario;

@Repository
public class LocalDAO {

	@PersistenceContext
	private EntityManager manager;

	public void save(Local local) {
		if(local.getId() != null) {
			manager.merge(local);
		} else {
			manager.persist(local);	
		}
	}

	public List<Local> list() {
		return manager
				.createQuery("select distinct(l) from Local l where l.excluido = false  ORDER BY l.descricao", Local.class)
				.getResultList();
	}

	public Local obterLocal(int id) {
		return manager
				.createQuery("select distinct(l) from Local l where l.id = "+id+" and l.excluido = false", Local.class)
				.getSingleResult();
	}
	
	public void delete(Local local) {
		manager.remove(local);
	}

}
