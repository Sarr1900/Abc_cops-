package Controleur;

import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.entities.Article;
import com.pack.session.IArticleEjbLocal;



@WebServlet(name = "/ArticleServlet", urlPatterns={"*.php"})
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@EJB
	private IArticleEjbLocal article;
	@Override
    public void init(ServletConfig config) throws ServletException {
    	
    	super.init(config);
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if(action!=null) {
			if(action.equals("del")) {
				Long id=Long.parseLong(request.getParameter("id_article"));
				article.deleteArticle(id);
				response.sendRedirect("as.php");
				
			}
		}
		request.setAttribute("produits" , article.gettAllArticle());
		request.getRequestDispatcher("menu.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String action1 = request.getParameter("action1");
		String action2 = request.getParameter("action2");
		String action3 = request.getParameter("action3");
		String action4 = request.getParameter("action4");
		String action5 = request.getParameter("action5");
		String ap ="Ajouter dans le panier";
		if(action1!=null) {
			if(action1.equals(ap)) {
				String nom_article="Clavier";
				double unite_prix =30000;
				int quantite=20;
				String description ="Clavier AZERTY";
				double total_prix =30000;
				article.AddArticle(new Article(0,nom_article, unite_prix, quantite, description, total_prix));
				//request.getRequestDispatcher("addArticle.jsp").forward(request, response);
			  //request.setAttribute("msg1", "Le produit est ajouté dans le panier. Consulter le panier");
			  //request.setAttribute("typemsg", "succes1");
			 response.sendRedirect("addArticle.jsp?msg1=added");
			 // request.getRequestDispatcher("addArticle.jsp").forward(request, response);}
			}
		} else if(action2!=null) {
			if(action2.equals(ap)) {
				String nom_article="Disk-dur-Externe";
				double unite_prix =25000;
				int quantite=30;
				String description ="Disk dur de 500Go";
				double total_prix =750000;
				article.AddArticle(new Article(0,nom_article, unite_prix, quantite, description, total_prix));
				 response.sendRedirect("addArticle.jsp?msg2=added2");
				/*request.getRequestDispatcher("addArticle.jsp").forward(request, response);
			  request.setAttribute("msg2", "Le produit est ajouté dans le panier. Consulter le panier");
			  request.setAttribute("typemsg2", "succes2");
			  request.getRequestDispatcher("addArticle.jsp").forward(request, response);}*/}
			
		}else if (action3!=null) {
			 if(action3.equals(ap)) {
					String nom_article="Carte-mère";
					double unite_prix =9275;
					int quantite=15;
					String description ="Carte-mère de nouvelle génération";
					double total_prix =139125;
					article.AddArticle(new Article(0,nom_article, unite_prix, quantite, description, total_prix));
					 response.sendRedirect("addArticle.jsp?msg3=added3");
					/*request.getRequestDispatcher("addArticle.jsp").forward(request, response);
				  request.setAttribute("msg3", "Le produit est ajouté dans le panier. Consulter le panier");
				  request.setAttribute("typemsg3", "succes3");
				  request.getRequestDispatcher("addArticle.jsp").forward(request, response);}*/}
		}else if(action4!=null) {
			 if(action4.equals(ap)) {
					String nom_article="Chargeur-PC";
					double unite_prix =9500;
					int quantite=25;
					String description ="Chargeur-PC rapide et éfficase";
					double total_prix =237500;
					article.AddArticle(new Article(0,nom_article, unite_prix, quantite, description, total_prix));
					 response.sendRedirect("addArticle.jsp?msg4=added4");
					/*request.getRequestDispatcher("addArticle.jsp").forward(request, response);
				  request.setAttribute("msg4", "Le produit est ajouté dans le panier. Consulter le panier");
				  request.setAttribute("typemsg4", "succes4");
				  request.getRequestDispatcher("addArticle.jsp").forward(request, response);}*/}
		}else if(action5!=null) {
			 if(action5.equals(ap)) {
					String nom_article="Souris-sans-fil";
					double unite_prix =4000;
					int quantite=10;
					String description ="Souris-sans-fil dernière sortie";
					double total_prix =40000;
					article.AddArticle(new Article(0,nom_article, unite_prix, quantite, description, total_prix));
					 response.sendRedirect("addArticle.jsp?msg5=added5");
					/*request.getRequestDispatcher("addArticle.jsp").forward(request, response);
				  request.setAttribute("msg5", "Le produit est ajouté dans le panier. Consulter le panier");
				  request.setAttribute("typemsg5", "succes5");
				  request.getRequestDispatcher("addArticle.jsp").forward(request, response);}*/}
		
					
		}
		}
		
	
	@Override
	public void destroy() {
		
		super.destroy();
	}

}
