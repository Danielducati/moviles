import 'dart:io';
import 'dart:math';  // Para usar la función sqrt y pow

void main() {
  print('Ingrese el valor del primer cateto (a):');
  double a = double.parse(stdin.readLineSync()!);

  print('Ingrese el valor del segundo cateto (b):');
  double b = double.parse(stdin.readLineSync()!);

  // Calcular hipotenusa usando la fórmula H = sqrt(a^2 + b^2)
  double h = sqrt(pow(a, 2) + pow(b, 2));

  print('La hipotenusa es: ${h.toStringAsFixed(2)}');
}
