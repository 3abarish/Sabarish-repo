package com.aspiresys;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpSession;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class aftpre
 */
public class aftpre extends HttpServlet {
	
	private static final long serialVersionUID =1L;
	@Resource(name="jdbc/login")
	private DataSource dataSource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public aftpre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		HttpSession httpsession=request.getSession();
		String Username = (String) httpsession.getAttribute("splname");
				PreparedStatement preparedstatement;
				
				
				try {
					
					
					Connection	connection = dataSource.getConnection();

		preparedstatement = connection.prepareStatement("insert into login.preresult(username,vote) values(?,?)");
					preparedstatement.setString(1,Username);
					preparedstatement.setString(2,request.getParameter("vote"));
					

					 preparedstatement.executeUpdate();
				
					 out.println("<html><head></head><body onload=\"alert('Voted Successfully ')\"></body></html>");
				
					 RequestDispatcher rd=request.getRequestDispatcher("votevicepre.jsp");
					 rd.include(request, response);

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
