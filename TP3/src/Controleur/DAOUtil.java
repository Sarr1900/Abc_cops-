package Controleur;

import java.sql.*;

public class DAOUtil {
    public static Connection getConnection() throws Exception{
        Connection con=null;
        String url="jdbc:mysql://localhost:3306/acb_corp_db";
        String user="root";
        String mdp="";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url, user, mdp);
        } catch (ClassNotFoundException ex) {
            throw new Exception("impossible de charger le driver !!"+ex.getMessage());
        }catch(SQLException e){
            throw new Exception("impossible de se connecter !!"+e.getMessage());
        }
         return con;
    }
    
}
