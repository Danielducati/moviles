import 'dart:io';

void main() {
  print('Ingrese la temperatura en grados Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 1.8) + 32;

  print('$celsius°C equivalen a ${fahrenheit.toStringAsFixed(2)}°F');
}
