package com.pack.session;

import java.util.List;

import javax.ejb.Local;

import com.pack.entities.Article;
import com.pack.entities.Inscription;
import com.pack.entities.User;


@Local
public interface IArticleEjbLocal {
	
	public void AddArticle(Article article);
		public List<Article> gettAllArticle();
		
		public void addUsers(Inscription i);
		public Inscription getUsers(String username, String password);
		//public void addLogin(User log);
     public void deleteArticle(long id_article);
     public Article getArticle(long id_article);
}
