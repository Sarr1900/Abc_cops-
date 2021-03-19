<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=""lightyellow"">
 <h1>félicitation Vous Etes Le Bienvenu a ABC Corp !!!</h1>
        <td>
        <h1>Veillez mémorisez le nom d'utilisateur et le mot de passe svp...!!!</h1>
        <%
            String PrenomIn="" ,NomIn="" ,AdresseIn="" ,UsernameIn="" ,PasswordIn="";
            if(request.getParameter("prenom") !=null){
            	PrenomIn=request.getParameter("prenom");
            }
            if(request.getParameter("nom") !=null){
            	NomIn=request.getParameter("nom");
            }
            if(request.getParameter("adresse") !=null){
            	AdresseIn=request.getParameter("adresse");
            }
            if(request.getParameter("username") !=null){
            	UsernameIn=request.getParameter("username");
            }
           if(request.getParameter("password") !=null){
        	   PasswordIn=request.getParameter("password");
           }
            
        %>
        <div>
        	<%if(request.getAttribute("msg")!=null) %>
        	<%{%>
        		<%request.getAttribute("msg"); %>
        	<%}%>
        </div>
        <jsp:useBean id="sessionActuel" class="bean.Articlebean" scope="session"/>
        <jsp:setProperty name="sessionActuel" property="prenom" value="<%=PrenomIn%>"/>
        <jsp:setProperty name="sessionActuel" property="nom" value="<%=NomIn%>"/>
        <jsp:setProperty name="sessionActuel" property="adresse" value="<%=AdresseIn%>"/>
        <jsp:setProperty name="sessionActuel" property="username" value="<%=UsernameIn%>"/>
        <jsp:setProperty name="sessionActuel" property="password" value="<%=PasswordIn%>"/>
        <table>
            <tr><td>Votre prenom est: </td><td><jsp:getProperty name="sessionActuel" property="prenom"/></td></tr>
            <tr><td>Votre nom est:</td><td><jsp:getProperty name="sessionActuel" property="nom"/></td></tr>
            <tr><td>Votre email est:</td><td><jsp:getProperty name="sessionActuel" property="adresse"/></td></tr>
            <tr><td>Votre nom d'utilisateur est:</td><td><jsp:getProperty name="sessionActuel" property="username"/></td></tr>
            <tr><td>Votre mot de passe est:</td><td><jsp:getProperty name="sessionActuel" property="password"/></td></tr>
           
            
        </table>
        <%
          int b=(int)sessionActuel.Connecte(PrenomIn, NomIn, AdresseIn, UsernameIn, PasswordIn);
         // int b=(int)sessionActuel.Connecte(UtilisateurIn, MotdepassIn, AddressIn, NuméroCompteIn, NuméroClientIn, ID_Messagerie, cnt, sdl);
           //out.println(b+" Ligne insérer");    
        %>
        <br><br>
         <a  href="login.jsp">Pour se connecter cliquer ici</a><br>
         <a  href="index.jsp">Pour quitter cliquer ici</a>

</body>
</html>