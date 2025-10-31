import java.util.*;
public class pratice4 {
    public static void main(String args[]){
        System.out.println("Enter two numbers:");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        int sum = a + b;
        int diff = b - a;
        int prod = a * b;
        int quot = b / a;
        System.out.println("sum: " + sum);
        System.out.println("difference: " + diff);
        System.out.println("product: " + prod);
        System.out.println("quotient: " + quot);


    }
    
}
