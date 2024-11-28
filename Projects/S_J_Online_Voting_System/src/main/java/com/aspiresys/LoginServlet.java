package com.aspiresys;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	@Resource(name="jdbc/login")
	private DataSource dataSource;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		Connection connection;
		Statement statement;
		ResultSet resultSet;
		String query="select * from login.log ";
		
		
		try {
			
//		String username=	request.getParameter("password");
//		String password=	request.getParameter("username");
			connection = dataSource.getConnection();

		statement = connection.createStatement();
		
		resultSet = statement.executeQuery(query);
		
		String username =request.getParameter("username");
		String password=request.getParameter("password");
		
		boolean validUser=false,validPass=false;
		
		while(resultSet.next()) {
			
		
		if(username.equals(resultSet.getString("username"))) {
			validUser=true;
		
			if( password.equals(resultSet.getString("password"))) {
				validPass=true;
				
				
				HttpSession httpsession=request.getSession();  
		        httpsession.setAttribute("username",username);
		        
		    	
				 RequestDispatcher rd=request.getRequestDispatcher("afterlogin.jsp");
				 rd.include(request, response);
				 
	 out.println("<html><head></head><body onload=\"alert('login Successfully   ')\"></body></html>");

			}
		}	
		}
	 
	 if(validUser==false  && validPass==false){
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("loginpage.jsp");
			requestDispatcher.include(request,response);
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('username and password are incorrect ');");
			out.println("location='loginpage.jsp';");
			out.println("</script>");
			
		}else if(validUser==true && validPass==false){
			RequestDispatcher requestDispatcher=request.getRequestDispatcher("loginpage.jsp");
			requestDispatcher.include(request,response);
			out.println("<script type=\"text/javascript\">"); 
			out.println("alert('Incorrect Paassword');"); 
			out.println("location='loginpage.jsp';");
			out.println("</script>");	
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