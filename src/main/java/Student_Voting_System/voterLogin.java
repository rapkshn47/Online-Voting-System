package Student_Voting_System;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class voterLogin
 */
public class voterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		DatabaseManager db = new DatabaseManager();
		java.sql.Connection con = db.getConnection();
		String voterNum = request.getParameter("voterNumber");
		
		try {
			PreparedStatement preparedStatement = con.prepareStatement("select voter_card_number from vote where voter_card_number='"+voterNum+"'");
			ResultSet rsl = preparedStatement.executeQuery("select voter_card_number from vote where voter_card_number='"+voterNum+"'");
			if(rsl.next())
			{
				response.sendRedirect("voterCheck.jsp");
			}
			else {
				PreparedStatement preparedStatement2 = con.prepareStatement("select vid,pnumber from voters where voter_card_number='"+voterNum+"'");
				ResultSet rs = preparedStatement2.executeQuery("select vid,pnumber from voters where voter_card_number='"+voterNum+"'");
				if(rs.next())
				{
					String contact = rs.getString("pnumber");
					response.sendRedirect("userWelcome.jsp?con="+contact);
				}
				else out.println("Please enter valid Voter Card Number.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
