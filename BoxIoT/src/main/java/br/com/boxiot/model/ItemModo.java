package br.com.boxiot.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "item_modo", schema = "public")
public class ItemModo{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="itmo_id")
	private Integer id;
	
	@Column(name="itmo_item_id")
	private	int idItem;
	
	@Column(name="itmo_modo_id")
	private	int idModo;

	@Column(name="itmo_porcentagem_luminosidade")
	private	int porcentagem;
	
	@Column(name="excluido")
	private Boolean excluido = false;

	public Integer getId() {
		return id;
	}

	public ItemModo(int idItem, int idModo, int porcentagem) {
		super();
		this.idItem = idItem;
		this.idModo = idModo;
		this.porcentagem = porcentagem;
	}
	
	public ItemModo() {
		
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getIdItem() {
		return idItem;
	}

	public void setIdItem(int idItem) {
		this.idItem = idItem;
	}

	public int getIdModo() {
		return idModo;
	}

	public void setIdModo(int idModo) {
		this.idModo = idModo;
	}

	public int getPorcentagem() {
		return porcentagem;
	}

	public void setPorcentagem(int porcentagem) {
		this.porcentagem = porcentagem;
	}

	public Boolean getExcluido() {
		return excluido;
	}

	public void setExcluido(Boolean excluido) {
		this.excluido = excluido;
	}
	
}
