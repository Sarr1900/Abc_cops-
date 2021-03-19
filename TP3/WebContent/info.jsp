<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String msg1=request.getParameter("msg1");
if("added".equals(msg1))
{
%>
<h2 class="alert">Produit ajouté avec succès</h2>
<% } %>
<% 
String msg2=request.getParameter("msg2");
if("added2".equals(msg2))
{
%>
<h2 class="alert">Produit ajouté avec succès</h2>
<% } %>
<% 
String msg3=request.getParameter("msg3");
if("added3".equals(msg3))
{
%>
<h2 class="alert">Produit ajouté avec succès</h2>
<% } %>
<% 
String msg4=request.getParameter("msg4");
if("added4".equals(msg4))
{
%>
<h2 class="alert">Produit ajouté avec succès</h2>
<% } %>
<% 
String msg5=request.getParameter("msg5");
if("added5".equals(msg5))
{
%>
<h2 class="alert">Produit ajouté avec succès</h2>
<% } %>



</body>
</html>