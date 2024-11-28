package aspiresys;


import java.util.Scanner;

public  class Process extends Multiprocess
{
	static Scanner input = new Scanner(System.in);
	
	
	
	
	//  three methods on continues process ---so put,  all in one method 
	
    void process()
   {
	System.out.println("To vote choose a number from the choices");
   prescounter();
   vicecounter();
   seccounter();
   
   System.out.println(		"\nYou successfully voted\n"		); 
   }
   
   
   
   public  void prescounter()
   {
   	
       do{
          System.out.println(  "\n\t\t	Candidate for 	"		+	Utils.arraylist.get(0)+"\n\n1. "
       		   											+Utils.candidates[0][0]+"\n2. "	 +Utils.candidates[0][1]
       		   				+"\n\nThe number you choose is ");
          
          Main.vote[0] = input.nextInt();
              switch(Main.vote[0]){
                  case 1: Main.position[0] = Utils.candidates[0][0];
                  Main.count[0]++;
                  break;
                  case 2: Main.position[0] =   Utils.candidates[0][1]  ;
                  Main.count[1]++;
                  break;
                  default: Main.position[0]= "Invalid Number";
                  System.out.println("Invalid Number Please Try Again");
                  break;
              }
       }while(Main.position[0].equals("Invalid Number"));      
       
          System.out.printf("\t\t\t		You vote  "+Main.position[0]
       		   						+" for the position of the "+Utils.arraylist.get(0)+"\n\n");
  }
   
   public  void vicecounter()
   {
       do{
          System.out.println( "\n\t\tCandidate for "+	Utils.arraylist.get(1)
          												+"\n1. "+Utils.candidates[1][0]+"\n2. "+Utils.candidates[1][1]
          												+"\nThe number you choose is ");
          Main.vote[1] = input.nextInt();
              switch(Main.vote[1])
              {
                  case 1: Main.position[1] = Utils.candidates[1][0];
                  Main.count[2]++;
                  break;
                  case 2: Main.position[1] = Utils.candidates[1][1] ;
                  Main.count[3]++;
                  break;
                  default: Main.position[1]= "Invalid Number";
                  System.out.println("Invalid Number Please Try Again");
                  break;
              }  
       }while(Main.position[1].equals("Invalid Number"));
       
          System.out.println	("\t\t\t		You vote  "+Main.position[1]
          									+" for the position of the "	+Utils.arraylist.get(1)+"\n\n");
  }

   public  void seccounter()
   {
       do{
         System.out.println(  "\n\t\tCandidate for "	+Utils.arraylist.get(2)+" \n1. "
       		  										+Utils.candidates[2][0]+"\n2. "+Utils.candidates[2][1]
       		  			+"\nThe number you choose is ");
         Main.vote[2] = input.nextInt();
             switch(Main.vote[2]){
                 case 1: Main.position[2] = Utils.candidates[2][0];
                 Main.count[4]++;
                 break;
                 case 2: Main.position[2] = Utils.candidates[2][1];
                 Main.count[5]++;
                 break;
                 default: Main.position[2]= "Invalid Number";
                 System.out.println("Invalid Number Please Try Again");
                 break;
             }    
       }while(Main.position[2].equals("Invalid Number"));
       
         System.out.println	("\t\t\t		You vote  "+Main.position[2]		
       		  							+" for the position of the "+Utils.arraylist.get(2)+"\n\n");
 } 
}
