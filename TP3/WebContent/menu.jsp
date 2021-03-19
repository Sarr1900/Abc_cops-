<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="/TestBoostrap/bootstrap-4.5/css/bootstrap.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
<meta charset="ISO-8859-1">
<title>Menu Article Pan Panier</title>
</head>
<body>		
	<jsp:include page="Navbar.html"></jsp:include>
	<div>
		<table class="table table-sm table-dark">
			<tr>
				<th class="table-primary"> N°</th><th>Articles</th><th>Prix Unitaire</th><th>Quantité</th><th>Description Article</th><th>Prix Totale</th><th>Supprimer</th>
			</tr>
			<c:forEach items="${produits}" var="pr">
				<tr class="table-primary">
					<td class="table-primary">${pr.id_article}</td>
					<td>${pr.nom_article}</td>
					<td>${pr.unite_prix}</td>
					<td>${pr.quantite}</td>
					<td>${pr.description}</td>
					<td>${pr.total_prix}</td>
					<c:forEach items="${produits}" var="pr" begin="0" end="0">
					<td><a href="supprime.php?action=del&id_article=${pr.id_article}">Supprimer</a></td>
					</c:forEach>
				</tr>
			</c:forEach>
			<tfoot>
			<tr>
			<th class="table-primary"></th>
			<th class="table-primary"></th>
			<th class="table-primary"></th>
			<th class="table-primary"></th>
			<th class="table-primary"> Total</th>
			<c:set var="total" value="${0}"/>
			<c:forEach items="${produits}" var="pr">
			<c:set var="total" value="${total+pr.total_prix}"/>
			</c:forEach>
			<th class="table-primary"> <input type="text" value="${total+pr.total_prix}" size="7" disabled="disabled"></th>
			<th class="table-primary"></th>
			</tr>
			</tfoot>
		</table>
		 
     
     <form action="PaymentServlet" method="GET">    
      <tr>
      <td><h4> Valider votre commande </h4> </td><td><h4><a href="payer.jsp" class="log">Ici</a></h4></td>
      </tr>
    

     </form>
    
	</div>	
 		<script src="/TestBoostrap/js/jquery-3.4.1.slim.min.js"></script>
        <script src="/TestBoostrap//js/jquery-3.5.1.js"></script> 
        <script src="/TestBoostrap//bootstrap-4.5/js/bootstrap.min.js"></script>
        <script src="/TestBoostrap//js/popper.min.js"></script>	
</body>
</html>