package aspiresys;




public class Result 
{
	
	 public static void result()
	 {
	        System.out.println	("\n Voting Result for the "+Utils.arraylist.get(0)+" \n"+Utils.candidates[0][0]
	        					+" = " + Main.count[0] +"\n"+Utils.candidates[0][1]+" = "
	        					+ Main.count[1] + "\n" );
	        

	        
 if(Main.count[0] > Main.count[1])
	                System.out.println	("\n"+Utils.candidates[0][0] 
	                					+"won the position for the "+ Utils.arraylist.get(0)+"\n");
	    else
	    	
	                System.out.println	("\n"+ Utils.candidates[0][1] 
	                					+"won the position for the "+ Utils.arraylist.get(0)+"\n");
	           
	        System.out.println		("Voting Result for the "+Utils.arraylist.get(1)+"\n"+Utils.candidates[1][0]
	        						+" = " + Main.count[2] +"\n"+Utils.candidates[1][1]+" = "
	        						+ Main.count[3] + "\n");


	        
 if(Main.count[2] > Main.count[3])
	            	
	                System.out.println	("\n"+Utils.candidates[1][0] 
	                					+"won the position for the "+ Utils.arraylist.get(1)+"\n");
	      else
	    	  
	                System.out.println	("\n"+Utils.candidates[1][1]
	                					+" won the position for the "+Utils.arraylist.get(1)+"\n");
	           
	        System.out.println	("\nVoting Result for the "+Utils.arraylist.get(1)+"\n"+Utils.candidates[2][0]
	        					+" = " + Main.count[4] + "\n"+Utils.candidates[2][1]+" = "
	        					+ Main.count[5] + "\n");

	        

	        
  if(Main.count[4] > Main.count[5])
	                System.out.println("\n"+Utils.candidates[2][0]
	                					+" won the position for the "+Utils.arraylist.get(2)+"\n");
	        else
	        	
	                System.out.println("\n"+Utils.candidates[2][1]
	                					+" won the position for the "+Utils.arraylist.get(2));
  
 }
}

