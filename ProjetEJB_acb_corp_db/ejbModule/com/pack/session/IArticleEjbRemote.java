package com.pack.session;

import java.util.List;

import javax.ejb.Remote;

import com.pack.entities.Article;
import com.pack.entities.User;

@Remote
public interface IArticleEjbRemote {

	public void AddArticle(Article article);
	public List<Article> gettAllArticle();
	//public void addLogin(User log);
}
