import java.util.Scanner;
public class num {

    public static void main(String[] args) {

       // declare variables
       double num1 = 0.0, num2 = 0.0, num3 = 0.0;
       double largestNumber = 0.0;

       // create Scanner class object
       Scanner scan = new Scanner(System.in);

       // read inputs
       System.out.print("Enter three numbers:: ");
       num1 = scan.nextDouble();
       num2 = scan.nextDouble();
       num3 = scan.nextDouble();

       // find largest number
       if(num1 >= num2) {
            if(num1 >= num3) largestNumber = num1;
            else largestNumber = num3;
       } else {
            if(num2>=num3) largestNumber = num2;
            else largestNumber = num3;
       }

       // display result
       System.out.println("Largest number = "+ largestNumber);

       // close Scanner class object
       scan.close();

     }
 }