package com.pack.session;

import java.util.List;

import javax.ejb.Stateless;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.pack.entities.Article;
import com.pack.entities.Inscription;
import com.pack.entities.User;

@Stateless
public class IArticleEjbImpl implements IArticleEjbLocal, IArticleEjbRemote{
    @PersistenceContext(name="ProjetEJB_acb_corp_db")
	private EntityManager em;
	@Override
	public void AddArticle(Article article) {
		em.persist(article);
	}
 
	@Override
	public List<Article> gettAllArticle() {
		Query query= em.createQuery("SELECT article FROM Article article");
		return query.getResultList();
	}

	@Override
	public void addUsers(Inscription i) {
		// TODO Auto-generated method stub
		em.persist(i);
	}
   
	
	@Override
	public Inscription getUsers(String username, String password) {
		try {
			Query req=em.createQuery("select i from Inscription i where i.username = : username and i.password = :password");
			req.setParameter("username", username);
			req.setParameter("password", password);
			return (Inscription) req.getSingleResult();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void deleteArticle(long id_article) {
		Article ar=getArticle(id_article);
		em.remove(ar);
		
	}

	@Override
	public Article getArticle(long id_article) {
		Article ar=em.find(Article.class, id_article);
		if(ar==null) throw new RuntimeException("l'article n'est pas trouvé");
		return ar;
	}
}
