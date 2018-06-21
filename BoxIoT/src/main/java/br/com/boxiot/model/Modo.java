package br.com.boxiot.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
public class Modo{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="modo_id")
	private Integer id;
	
	@Column(name="modo_descricao")
	private	String descricao;
	
	@Column(name="excluido")
	private Boolean excluido = false;

	public Boolean getExcluido() {
		return excluido;
	}

	public void setExcluido(Boolean excluido) {
		this.excluido = excluido;
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

}
