<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Corp</title>
</head>
<body>
<td>
<area shape="rect" coords="33,46 116,80" href="" target="page">
<img height="120" width="120" border="2" src="imagArticle/girl2.jpg"></td>
	
			<jsp:include page="Navbar.html"></jsp:include>
                  
		     <hr>
				<!-- Start Message -->
		   >
       </div> 
                <!-- End Message -->        
		  <form action="ins.php" method="post"> 
		  <marquee><h1><b><center><font color=green face="Times New Roman">
                    Bienvenue Sur ABC CORP <br>
                    Votre Magasin A Tout Vos Produits Informatiques<br></font></center>  </b></h1></marquee>
                    <br>
                  <br>
                   
                    <marquee><h1><b><center><font color=green face="Times New Roman">
                    Bienvenue Sur ABC CORP <br>
                    Votre Magasin A Tout Vos Produits Informatiques<br></font></center>  </b></h1></marquee>
                    <br>
                    <br>
                    
                    <center>
                    <h2>Pour plus d'informations sur un produit, veillez cliquer sur le produit !!!</h2><br>
                    	  <jsp:include page="info.jsp"></jsp:include> 
		<table>
			<tr>
			<td><map name="bouton1">
            <area shape="rect" coords="33,46 116,80" href="produit1.jsp" target="page"></MAP>
            <img alt="produit1" height="125" width="125" border="3" src="imagArticle/clavier.jpg" usemap="#bouton1"></td>            			
			<td></td><br>
			<td><h5>Clavier_azerty marque acer</h5></td><br>
			<td><h3><input type="submit" name="action1" value="Ajouter dans le panier"></h3></td>			
			</tr>
			<br><br>
			<tr>
			<td><map name="bouton2">
            <area shape="rect" coords="33,46 116,80" href="produit2.jsp" target="page"></MAP>
            <img alt="produit2" height="125" width="125" border="3" src="imagArticle/disk_dur.jpg" usemap="#bouton2"></td>            	
			<td></td><br>
			<td><h5>Disque dur externe de 500Go</h5></td><br>
			<td><h3><input type="submit" name="action2" value="Ajouter dans le panier"></h3></td>
			</tr>
			<tr>
			<td><map name="bouton3">
            <area shape="rect" coords="33,46 116,80" href="produit3.jsp" target="page"></MAP>
           <img alt="produit3" height="125" width="125" border="3" src="imagArticle/carte-mere-pc.jpg" usemap="#bouton3"></td>            
			<td></td><br>
			<td><h5>Carte mere de nouvelle generation</h5></td><br>
			<td><h3><input type="submit" name="action3" value="Ajouter dans le panier"></h3></td>
			</tr>		
			<tr>
			<td><map name="bouton4">
            <area shape="rect" coords="33,46 116,80" href="produit4.jsp" target="page"></MAP>
           <img alt="produit4" height="125" width="125" border="3" src="imagArticle/chargeur_pc.jpg" usemap="#bouton4"></td>
			<td></td><br>
			<td><h5>Chargeur-PC puissant et efficase pour Acer,HP..</h5></td><br>
			<td><h3><input type="submit" name="action4" value="Ajouter dans le panier"></h3></td>
			</tr>
			<tr>
			<td><map name="bouton5">
            <area shape="rect" coords="33,46 116,80" href="produit5.jsp" target="page"></MAP>
            <img alt="produit5" height="125" width="125" border="3" src="imagArticle/souris-sans-fil.jpg" usemap="#bouton5"></td>
			<td></td><br><br>
			<td><h5>Souris-sans-fil, la nouvelle quanlite sortie </h5></td><br>
			<td><h3><input type="submit" name="action5" value="Ajouter dans le panier"></h3></td>
			</tr>
		</table>
		</center>
	</form>
</body>
</html>