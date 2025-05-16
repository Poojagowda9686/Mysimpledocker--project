import java.util.Scanner;

public class SimpleApp {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Collecting user details
        System.out.print("Enter your name: ");
        String name = scanner.nextLine();

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();
        scanner.nextLine(); // consume newline

        System.out.print("Enter your city: ");
        String city = scanner.nextLine();

        // Displaying a message
        System.out.println("\nWelcome, " + name + "!");
        System.out.println("You are " + age + " years old and from " + city + ".");

        scanner.close();
    }
}
