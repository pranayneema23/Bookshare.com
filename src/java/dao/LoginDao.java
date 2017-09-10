/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.LoginBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author $ sagar $
 */
public class LoginDao {
    public String authenticateUser(LoginBean loginBean)
    {
        String username = loginBean.getUsername();
        String password = loginBean.getPassword();
        
        String emailDB="";
        String passwordDB="";
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("select username,password from booksharesignup");
            
            while(resultSet.next())
            {
                emailDB = resultSet.getString("username");
                passwordDB = resultSet.getString("password");
                
                if(username.equals(emailDB) && password.equals(passwordDB))
                {
                    return "success";
                    
                }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return "Invalid user credentials";
    }
    
}
