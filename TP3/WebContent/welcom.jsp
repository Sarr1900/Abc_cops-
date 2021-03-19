<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcom</title>
</head>
<body>
		<jsp:include page="entête.jsp"></jsp:include>
		 <form action="ins.php" method="post">     
		<table>
			<tr>
			<td><map name="bouton">
         <area shape="rect" coords="33,46 116,80" href="kanagawa.html" target="page"></MAP>
         <img alt="produit1" height="120" width="120" border="2" src="imagArticle/clavier.jpg" usemap="#bouton"></td>            
			
			<td>Clavier_azerty</td><br>
			<td>Clavier_azerty marque acer</td><br>
			<td><input type="submit" name="action1" value="Ajouter dans le panier"></td>			
			</tr>
			<br><br>
			<tr>
			<td><map name="bouton">
            <area shape="rect" coords="33,46 116,80" href="kanagawa.html" target="page"></MAP>
            <img alt="produit2" height="120" width="120" border="2" src="imagArticle/disk_dur.jpg" usemap="#bouton"></td>            	
			<td>Disk-dur-externe</td><br><br><br>
			<td>Disque dur externe de 500Go</td><br>
			<td><input type="submit" name="action2" value="Ajouter dans le panier"></td>
			</tr>
			<tr>
			<td><map name="bouton">
            <area shape="rect" coords="33,46 116,80" href="kanagawa.html" target="page"></MAP>
           <img alt="produit3" height="120" width="120" border="2" src="imagArticle/carte-mere-pc.jpg" usemap="#bouton"></td>            
			<td>Carte-mere</td><br>
			<td>Carte mere de nouvellegeneration</td><br>
			<td><input type="submit" name="action3" value="Ajouter dans le panier"></td>
			</tr>		
			<tr>
			<td><map name="bouton">
            <area shape="rect" coords="33,46 116,80" href="kanagawa.html" target="page"></MAP>
           <img alt="produit4" height="120" width="120" border="2" src="imagArticle/chargeur_pc.jpg" usemap="#bouton"></td>
			<td>Chargeur-PC</td><br>
			<td>Chargeur-PC puissant et efficase pour Acer,HP et Dell</td><br>
			<td><input type="submit" name="action4" value="Ajouter dans le panier"></td>
			</tr>
			<tr>
			<td><map name="bouton">
            <area shape="rect" coords="33,46 116,80" href="kanagawa.html" target="page"></MAP>
            <img alt="produit5" height="120" width="120" border="2" src="imagArticle/souris-sans-fil.jpg" usemap="#bouton"></td>
			<td>Souris-sans-fil</td><br><br>
			<td>Souris-sans-fil, la nouvelle quanlite sortie </td><br>
			<td><input type="submit" name="action5" value="Ajouter dans le panier"></td>
			</tr>
		</table>
	</form>
</body>
</html>