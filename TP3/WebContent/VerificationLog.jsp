<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>

<% 
if("POST".equalsIgnoreCase(request.getMethod()))
    {
        if(request.getParameter("connexion")!=null)
        {
            if(request.getParameter("connexion").equals("Se connecter"))
            {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                
                Connection con = null;
                PreparedStatement ps;
                ResultSet rs;
                String query;
                
                try
                {
                	Class.forName("com.mysql.jdbc.Driver");
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                
                try
                {     
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acb_corp_db","root","");
                    query = "Select * from inscription where username=? and password=?";
                    ps = con.prepareStatement(query);
                    ps.setString(1,username);
                    ps.setString(2,password);
                    rs = ps.executeQuery();
                    
                    if(rs.next())
                    {
                        //Login successful!
                        //Creating Session...
                        session = request.getSession();
                        session.setAttribute("userEmail", username);
                        response.sendRedirect("addArticle.jsp");
                    }
                    else
                    {
                        out.println("Invalid Email id or Password!!! Please ");
                        out.println("<a href=\"login.jsp\"> Try Again </a>");
                        
                    }
                    
                }
                catch(SQLException e)
                {
                    System.out.println(e);
                }
               
           }
        }
        else if (request.getParameter("inscrit")!=null)
        {
            if(request.getParameter("inscrit").equals("S'inscrire"))
            {
                response.sendRedirect("addInscrit.jsp");
            }
        }
            
    }

%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Verification</title>
</head>
<body>
 
</body>
</html>