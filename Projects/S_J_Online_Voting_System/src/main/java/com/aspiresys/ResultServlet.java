package com.aspiresys;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;


import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResultServlet
 */
public class ResultServlet extends HttpServlet {
	@Resource(name="jdbc/login")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResultServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
				
				
				
				try {
					
					
					Connection	connection = dataSource.getConnection();
					Statement	statement1 =connection.createStatement();
					Statement	statement2 =connection.createStatement();

					ResultSet r1 =statement1.executeQuery("select  vote from preresult  group by vote order by count(*) desc limit 1; ");
					ResultSet r2 =statement2.executeQuery("select  vote from viceresult  group by vote order by count(*) desc limit 1; ");
					while(r1.next()) {
						out.println("<h1> Vote Result </h1>");
						out.println("<h1> President : "+r1.getString(1)+"</h1>");
					}
					while(r2.next()) {
						
						out.println("<h1> Vice-President : "+r2.getString(1)+"</h1>");
				}
					
					
				}catch (SQLException e) {
			e.printStackTrace();
		}
				
				
				
				}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}