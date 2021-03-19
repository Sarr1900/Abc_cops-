package com.pack.entities;

import java.io.Serializable;
import java.lang.Long;
import java.lang.String;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Article
 *
 */
@Entity

public class Article implements Serializable {

	   
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id_article;
	private String nom_article;
	//private String subcategorie;
	private double unite_prix;
	private int quantite;
	private String description;
	private double total_prix;
	private static final long serialVersionUID = 1L;

	public Article() {
		super();
	}   
	/*public Long getReference() {
		return this.reference;
	}

	public void setReference(Long reference) {
		this.reference = reference;
	} */  
	/*public String getCategorie() {
		return this.categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}   
	public String getSubcategorie() {
		return this.subcategorie;
	}

	public void setSubcategorie(String subcategorie) {
		this.subcategorie = subcategorie;
	}   */
	public long getId_article() {
		return id_article;
	}
	public void setId_article(long id_article) {
		this.id_article = id_article;
	}
	
	public String getNom_article() {
		return nom_article;
	}
	public void setNom_article(String nom_article) {
		this.nom_article = nom_article;
	}
	public double getUnite_prix() {
		return unite_prix;
	}
	public void setUnite_prix(double unite_prix) {
		this.unite_prix = unite_prix;
	}
	public int getQuantite() {
		return this.quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}  
	
	public double getTotal_prix() {
		return total_prix;
	}
	public void setTotal_prix(double total_prix) {
		this.total_prix = total_prix;
	}
	    
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public Article(long id_article, String nom_article, double unite_prix, int quantite, String description,
			double total_prix) {
		super();
		this.id_article = id_article;
		this.nom_article = nom_article;
		this.unite_prix = unite_prix;
		this.quantite = quantite;
		this.description = description;
		this.total_prix = total_prix;
	}
	
   
}
