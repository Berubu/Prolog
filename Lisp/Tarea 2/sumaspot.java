import java.util.Scanner;

public class sumaspot {

    /* Método recursivo para sumar dos números
    public static int suma(int a, int b) {
        if (b == 0) {
            return a;
        } else {
            return suma(a + 1, b - 1);
        }
    }*/

    // Método recursivo para calcular la potencia
    public static int potencia(int base, int exponente) {
        if (exponente == 0) {
            return 1;
        } else {
            return base * potencia(base, exponente - 1);
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        try {
            System.out.print("Ingrese el primer número para la suma: ");
            int a = scanner.nextInt();
            System.out.print("Ingrese el segundo número para la suma: ");
            int b = scanner.nextInt();
            System.out.println("Resultado de la suma: " + suma(a, b));

            System.out.print("Ingrese la base para la potencia: ");
            int base = scanner.nextInt();
            System.out.print("Ingrese el exponente para la potencia: ");
            int exponente = scanner.nextInt();
            System.out.println("Resultado de la potencia: " + potencia(base, exponente));
        } catch (IllegalArgumentException e) {
            System.out.println(e.getMessage());
        } finally {
            scanner.close();
        }
    }
}