package br.com.boxiot.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;


@Entity
@Table(name = "usuario", schema = "controle_acesso")
public class Usuario{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@Column(name="usua_id")
	private Integer id;
	
	@Column(name="usua_nome")
	private	String nome;
	
	@Column(name="usua_email")
	private	String email;

	@Column(name="usua_senha")
	private	String senha;
	
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

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
