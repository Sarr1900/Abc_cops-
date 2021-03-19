package com.pack.entities;

import java.io.Serializable;
//import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Inscription")
public class Inscription  implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id_user;
	private String prenom;
	private String nom;
	private String email;
	private String username;
	private String password;
	
	
	public int getId_user() {
		return id_user;
	}
	
	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Inscription() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Inscription(int id_user, String prenom, String nom, String email, String username, String password) {
		super();
		this.id_user = id_user;
		this.prenom = prenom;
		this.nom = nom;
		this.email = email;
		this.username = username;
		this.password = password;
	
	}
	
}
