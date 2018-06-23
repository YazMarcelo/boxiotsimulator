package br.com.boxiot.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class Item{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="item_id")
	private Integer id;
	
	@Column(name="item_descricao")
	private	String descricao;
	
	@Column(name="item_icone")
	private	String icone;

	@Column(name="item_saida")
	private	int saida;
	
	@Column(name="item_local_id")
	private	int idLocal;
	
	public Boolean getLigado() {
		return ligado;
	}

	public void setLigado(Boolean ligado) {
		this.ligado = ligado;
	}

	@Column(name="excluido")
	private Boolean excluido = false;
	
	@Column(name="item_ligado")
	private	Boolean ligado;

	public Boolean getExcluido() {
		return excluido;
	}

	public void setExcluido(Boolean excluido) {
		this.excluido = excluido;
	}

	public int getIdLocal() {
		return idLocal;
	}

	public void setIdLocal(int idLocal) {
		this.idLocal = idLocal;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getIcone() {
		return icone;
	}

	public void setIcone(String icone) {
		this.icone = icone;
	}

	public int getSaida() {
		return saida;
	}

	public void setSaida(int saida) {
		this.saida = saida;
	}
}
