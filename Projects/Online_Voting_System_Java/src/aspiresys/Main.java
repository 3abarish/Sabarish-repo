package aspiresys;

/*
	
Title 				: Online Voting System 
Author 				: Sabarish G
Created on 		 	: 04.10.2022
Last Modified Date	: 28.10.2022
Reviewed By 		: Anushya Narayanan
Reviewed on 		: 02.11.2022 
 
 */


import java.util.Scanner;
//import java.sql.*;

public class Main {


		
	 static Scanner scanner = new Scanner(System.in);
		
	 public static int count[] = new int[6]; 				//no.of votes
	    
	    public static int vote[] = new int[3];				 // user input and it has been used for the switch case
	   
	    public static String[] position = new String[3];	 //switch case as a Validator
	   
	    			
	    								private static String userPassword,userName; 	
	    				
	    			
	    	// get user name and password    --encapsulation
	    				
	    				public static String getuserName()				
	    				{
	    					return userName;
	    				}
	    				public static String getuserPassword()
	    				{				
	    					return userPassword;
	    				}
	    
	    	// method for login input			
	    
	    public static void userLogin()
	    {
	        System.out.print("Enter Username: ");
	        userName = scanner.next();
	        System.out.print("Enter Password: ");
	        userPassword = scanner.next();
	 }
	    
	    // store username and password
	    
	    private static boolean login(String user,String pass)
	    {
	        	return (user.equals("user1") && pass.equals("1")) ||
	        			(user.equals("user2") && pass.equals("2")) ||
	        			(user.equals("user3") && pass.equals("3")) ; 
	    }

	 public static void main(String[] args)
	 {
		// PositionsNames positionsNames =new PositionsNames();
		 
	        int attempt = 0;						// \t - horizontal tabspace ,		 \n -nextLine
	   
	        System.out.println("\n\t\t		Welcome to our Voting System			\n\n"); 
	        	
	        Process proces=new Process();
	
	        	
	      try {     
	        		do{
	         userLogin();
	         
	         boolean log = login(userName,userPassword);
	             if(log == true)
	             {
	                 System.out.println("\n\n		Successfully login			\n\n");
	                 ++attempt;
	                 proces.process();
	                 
	             }

	 else
	                 System.out.println("\n		Invalid Username or Password				\n\n");
	             
	             // The attempt 2 is the loop how many times the program will vote
	      
	        }while(attempt < 3);
	    
	        Result.result();
	    	}
	      
	catch(Exception e) {
		System.out.println("processing...");
	
	}
	
	}

}

