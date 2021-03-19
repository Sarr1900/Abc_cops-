package Controleur;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pack.entities.Inscription;
import com.pack.session.IArticleEjbLocal;




@WebServlet("/TraitementServlet")
public class TraitementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@EJB
	//private IIsncriptionLocal inscri;
	private IArticleEjbLocal inscri;
    public TraitementServlet() {
        super();
    }
    @Override
    public void init() throws ServletException {
    	super.init();
    	
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String prenom = request.getParameter("prenom");
		String nom = request.getParameter("nom");
		String adresse = request.getParameter("adresse");
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
		inscri.addUsers(new Inscription(0, prenom, nom, adresse, username, password));
		request.setAttribute("msg", "Inscription réussit vous pouvez connecter maintenant");
		request.getRequestDispatcher("Recuperbean.jsp").forward(request, response);
		//String login = request.getParameter("username");
		//String passs = request.getParameter("password");
			/**
			 * 
			 * 
			 * Reste incomplet
			 * 
			 * **/
	}
	@Override
	public void destroy() {
		
		super.destroy();
	}

}
