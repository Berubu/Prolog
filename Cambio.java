import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class CambioDeMonedas {
    private static final int[] MONEDAS = {1, 2, 5, 10, 20, 50, 100};
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Ingresa el monto a cambiar: ");
        int monto = scanner.nextInt();

        List<List<Integer>> combinaciones = calcularCombinaciones(monto);

        System.out.println("\n=== Combinaciones encontradas ===");
        for (List<Integer> combo : combinaciones) {
            System.out.println(combo);
        }
        System.out.println("\nTotal de formas distintas: " + combinaciones.size());

        scanner.close();
    }

   
    private static List<List<Integer>> calcularCombinaciones(int monto) {
        List<List<Integer>> resultado = new ArrayList<>();
        backtrack(resultado, new ArrayList<>(), monto, 0);
        return resultado;
    }

    
    private static void backtrack(List<List<Integer>> resultado,
                                  List<Integer> actual,
                                  int restante,
                                  int idxMoneda) {
        if (restante == 0) {
            resultado.add(new ArrayList<>(actual));
            return;
        }
        if (idxMoneda >= MONEDAS.length || restante < 0) {
            return;
        }

        int moneda = MONEDAS[idxMoneda];

        if (moneda <= restante) {
            actual.add(moneda);
            backtrack(resultado, actual, restante - moneda, idxMoneda);
            actual.remove(actual.size() - 1);  // deshacer elección
        }
        backtrack(resultado, actual, restante, idxMoneda + 1);
    }
}
