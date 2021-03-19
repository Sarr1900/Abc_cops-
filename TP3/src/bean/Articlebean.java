package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import Controleur.TraitementServlet;

public class Articlebean {

	String prenom;
	String nom;
	String adresse;
	String email;
	String username;
	String password;
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
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	
	
	public int Connecte(String prenom, String nom, String email, String username, String password){
		
        int a=0;        
        
        try {
        /*Load the JDBC-ODBC bridge driver*/
     Class.forName("com.mysql.jdbc.Driver");
        /*Obtain a Connection object*/
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/acb_corp_db","root","");
       System.out.println("Ton Enregistrement a été insérer avec succès");
      } catch (Exception e ) {
    System.out.println(e);
         //Logger.getLogger(Servlet1.class.getName()).log(Level.SEVERE, null, p);
        }  
        return a;
}
	
}