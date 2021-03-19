<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="exstyle/style1.css" rel="stylesheet">
</head>
<body>
<%-- <div class="container">
<div class="panel panel-primary">
<div class="panel-heading">L'authentification est obligatoire</div>
<div class="panel-body">
<form action="VerificationLog.jsp" method="post">
</form>

</div>
</div>--%>

<%-- <br><br><br><br>
 <center><h1>Login</h1></center><br><br> --%>
 <fieldset class="bord">

 <legend class="leg"><h2>Login</h2></legend>
<form action="VerificationLog.jsp" method="post">
<table align="center" collpading="4" cellspacing="4">
  <tr>
      <th align="right" class="log">Username:</th>
      <td><input type="text" name="username"></td>
  </tr>
  <tr>
      <th align="right" class="log">Password:</th>
      <td><input type="password" name="password"></td>
  </tr>
  <tr>
     <td colspan="2" align="right">
     <input type="submit" name="connexion" value="Se connecter" class="btn">
     </td>
  </tr>
  <tr>
     <td class="log"><h4> Pour S'inscrire Clique</h4> </td><td><a href="addInscrit.jsp" class="log">Moi</a> </td>
  </tr>
</table>
</form>
<%-- </div> --%>
</fieldset>
</body>
</html>
