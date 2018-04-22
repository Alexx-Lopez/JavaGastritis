/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Herramientas;

/**
 *
 * @author Alexx
 */

import java.sql.*;

public class Conexion {
    
    private Connection con=null;
    private Statement st=null;
    private ResultSet rs=null;
    private String query="";
    
    //constructor
    public Conexion() throws SQLException{
        try{
            //se obtiene el driver de MySQL
            Class.forName("com.mysql.jdbc.Driver");
            
            //se obtiene la conexion con la base de datos
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteca?useSSL=false","root","");
            st=con.createStatement();
        }catch(ClassNotFoundException e){
            System.out.println("ERROR. No se encuentra el driver de la BDD: "+e.getMessage());
        }
    }
    
    public ResultSet getRS()
    {
        return rs;
    }
    
    public void setRS(String consulta)
    {
        try {
            this.rs=st.executeQuery(consulta);
        } catch (SQLException e2) {
            System.out.println("ERROR. Fallo en SQL: "+e2.getMessage());
        }
    }
    
    public void setQuery(String query) throws SQLException
    {
        this.st.executeUpdate(query);
    }
    
    public void cerrarConexion() throws SQLException
    {
        con.close();
    }
}
