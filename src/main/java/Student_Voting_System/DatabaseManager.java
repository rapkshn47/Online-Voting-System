package Student_Voting_System;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Servlet implementation class DatabaseManager
 */
public class DatabaseManager extends HttpServlet {
	public Connection getConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingsystemdb","root","12345");
			return conn;
		}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		}
		catch(SQLException e)
		{
			e.printStackTrace();
			return null;
		}
	}
       
    
	

}
