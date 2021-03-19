package com.pack.web;

import java.io.IOException;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pack.entities.Article;
import com.pack.entities.User;
import com.pack.metier.Validation;
import com.pack.session.IArticleEjbLocal;
//import com.pack.web.Model;



/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Model model;
	private String page="home";
	private Validation metier;
	@EJB 
	private IArticleEjbLocal metierEJB;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public index() {
     
    }
    public void init() throws ServletException {
    	model= new Model();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page =(String)request.getParameter("page");
		Cookie[] cookies=request.getCookies();
		if(page!=null) {
			if(page.equals("home")) {
				request.setAttribute("model", model);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else if (page.equals("add")) {
				request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
			}else {
				if(cookies!=null) {
					boolean test=false;
					for(int i=0;i<cookies.length;i++) {
						if(cookies[i].getName().equals("user")) test=true;
					}
					if(test) {
						request.getRequestDispatcher("/index.jsp").forward(request, response);
					}else {
						request.getRequestDispatcher("/login.jsp").forward(request, response);
					}
				}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=(String)request.getParameter("action");
		if(action.equals("Se Connecter")) {
			String login=(String)request.getParameter("login");
			String pass=(String)request.getParameter("pass");
			String r=(String)request.getParameter("r");
			
			if(login.equals(pass)) {
				User user= new User();
				user.setLogin(login);
				user.setPass(pass);
				if(r!=null) {
					Cookie cookie= new Cookie("user",user.toString());
					cookie.setMaxAge(15*24*60*60);
					response.addCookie(cookie);
				}
				HttpSession session=request.getSession();
				session.setAttribute("user", user);
				request.getRequestDispatcher("index.jsp").forward(request, response);
				
			}
			else {
				request.setAttribute("msgerr", "Login ou mot de passe incorrect!");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else if(action.equals("Ajouter l'article")) {
			metier =new Validation();
			model.getErreurs().clear();
			Article article=new Article();
			String id_article=(String)request.getParameter("id_article");
			String nm_article=(String)request.getParameter("nom_artcile");
			String prix1=(String)request.getParameter("unite_prix");
			String quantite1=(String)request.getParameter("quantite");
			String description=(String)request.getParameter("description");
			Double unite_prix;
			try {
				unite_prix=Double.parseDouble(prix1);
			}catch(Exception e) {
				unite_prix=0.0;
			}
			int quantite;
			try {
				quantite=Integer.parseInt(quantite1);
			}catch(Exception e) {
				quantite=0;
			}
			//reference
			/*article.setCategorie(categorie);
			article.setSubcategorie(subcategorie);*/
			article.setNom_article(nm_article);
			article.setUnite_prix(unite_prix);
			article.setQuantite(quantite);
			article.setDescription(description);
			metierEJB.AddArticle(article);
			model.setListe(metierEJB.gettAllArticle());
			model.setArticle(article);
			metier.valider(prix1, quantite1);
			if(metier.isEmpty()) {
				
				request.setAttribute("model", model);
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}else {
				model.setErreurs(metier.getErreurs());
				request.setAttribute("model", model);
				request.getRequestDispatcher("/addArticle.jsp").forward(request, response);
			}
		}
	}

}
