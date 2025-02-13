import java.util.Scanner;

public class Recursividad {

    public static int recursivo(int div, int sor) {
        if (sor == 0) {
            throw new IllegalArgumentException("No se puede dividir por cero");
        }
        if (div < sor) {
            return 0;
        } else {
            return 1 + recursivo(div - sor, sor);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        try {
            System.out.print("Dividendo: ");
            int div = scanner.nextInt();
            System.out.print("Divisor: ");
            int sor = scanner.nextInt();
            System.out.println("Resultado: " + recursivo(div, sor));
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        } finally {
            scanner.close();
        }
    }
}