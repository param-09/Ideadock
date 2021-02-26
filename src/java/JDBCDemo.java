/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbcdemo;

/**
 *
 * @author Esan
 */
import java.sql.*;
public class JDBCDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception{
        // TODO code application logic here
        String DBURL="jdbc:mysql://localhost:3306/project";
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");//Register Driver
        conn=DriverManager.getConnection(DBURL,"root","");
        if(conn!=null){
            System.out.println("Connection successfully");
        }
    }
    
}
