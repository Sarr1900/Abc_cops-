<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inscription</title>
<link href="exstyle/style2.css" rel="stylesheet">
</head>
<body>
     <fieldset class="bord1">
    <legend class="inscr"><h2>Inscription</h2></legend>
		<form action="TraitementServlet" method="POST">	
		<table align="center" collpading="4" cellspacing="4">	
			<tr>
				<td class="ins">Prenom</td>
				<td><input type="text" name="prenom" placeholder="Badara"></td>
			</tr>
			<tr>
				<td class="ins">Nom</td>
				<td><input type="text" name="nom" placeholder="Ghost"></td>
			</tr>
			<tr>
				<td class="ins">Adresse</td>
				<td><input type="email" name="adresse" placeholder="xxxx@xxxx.com"></td>
			</tr>
			<tr>
				<td class="ins">Utilisateur</td>
				<td><input type="text" name="username" placeholder="GhostN!!t" ></td>
			</tr>
			<tr>
				<td class="ins">Mot de pass</td>
				<td><input type="password" name="password" placeholder="********"></td>
			</tr>
			<tr>
				<td><input type="submit" name="inscrit" value="S'inscrire"></td>
			</tr>
			</table>
		</form>
	</fieldset>
</body>
</html>


