package com.aspiresys;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	@Resource(name="jdbc/login")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
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
				
				PreparedStatement preparedstatement;
				boolean available=false;
				String query =" select username,aadhar from login.log ";
				String username=request.getParameter("username");
				String aadhar=request.getParameter("aadhar");
				
				
				try {
					
						
					
					Connection	connection = dataSource.getConnection();

					
					Statement	statement = connection.createStatement();
					
					 ResultSet	resultSet = statement.executeQuery(query);
					 while(resultSet.next()) {
						 
					if(			(username.equals(resultSet.getString("username"))	) && (aadhar.equals(resultSet.getString("aadhar")))		)
					{
							available=true;
					
					}
					
					 } if (available==false) {
							preparedstatement = connection.prepareStatement("insert into login.log(username,aadhar,email,mobile,password,age,gender) values(?,?,?,?,?,?,?)");
							preparedstatement.setString(1,request.getParameter("username"));
							preparedstatement.setString(2,request.getParameter("aadhar"));
							preparedstatement.setString(3,request.getParameter("email"));
							preparedstatement.setString(4,request.getParameter("mobile"));
							preparedstatement.setString(5,request.getParameter("password"));
							preparedstatement.setString(6,request.getParameter("age"));
							preparedstatement.setString(7,request.getParameter("gender"));
						
				 preparedstatement.executeUpdate();
					
				 out.println("<html><head></head><body onload=\"alert('Register Successfully ')\"></body></html>");
			
				 RequestDispatcher rd=request.getRequestDispatcher("loginpage.jsp");
				 rd.include(request, response);
						 
					 }
					 
					 if (available==true){
							RequestDispatcher rd=request.getRequestDispatcher("RegistrationPage.jsp");
							 rd.include(request, response);
							 out.println("<html><head></head><body onload=\"alert('username and Aadhar  already exit .   ')\"></body></html>");
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