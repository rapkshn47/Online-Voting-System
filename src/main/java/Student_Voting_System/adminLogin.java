package Student_Voting_System;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		String adminName = request.getParameter("adminName");
		String password = request.getParameter("adminPassword");
		
		try {
			PreparedStatement preparedStatement = con.prepareStatement("select * from admin where adminName='"+adminName+"' and adminPass='"+password+"'");
			ResultSet rsl = preparedStatement.executeQuery("select * from admin where adminName='"+adminName+"' and adminPass='"+password+"'");
			if(rsl.next())
			{
				HttpSession session = request.getSession();
				session.setAttribute("adminName", adminName);
				response.sendRedirect("adminWelcome.jsp");
			}
			else out.println("Wrong Credentials.");			
		} catch (Exception e) {
			out.println(e.getStackTrace());
		}
	}

}
