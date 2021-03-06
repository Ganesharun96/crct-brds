package com.demo;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet
 */
@WebServlet("login")
public class login extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		if(validateLogin(name, password) )
		{
			
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("LoginError.jsp");
		}
	}

	private boolean validateLogin(String name, String password) {
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			Statement statement = connection.createStatement();
			String query = "select count(*) from dbconnection where name ='" + name +"' and password ='"+ password +"'";
			System.out.println(query);
			ResultSet Result = statement.executeQuery(query);
			System.out.println("Valid Login!");
		if (Result.next()) {
				if(Result.getInt(1) > 0)
				return true;
			}

		} catch (ClassNotFoundException exception) {
			System.out.println(exception);
		} catch (SQLException exception) {
			System.out.println(exception);
		}
		return false;
	}
}