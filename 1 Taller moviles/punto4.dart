import 'dart:io';

void main() {
  print('Ingrese el nombre del empleado:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese la cantidad de horas laboradas en el mes:');
  double horas = double.parse(stdin.readLineSync()!);

  print('Ingrese la tarifa por hora:');
  double tarifa = double.parse(stdin.readLineSync()!);

  double totalDevengado = horas * tarifa;

  print('\n--- Planilla del empleado ---');
  print('Nombre: $nombre');
  print('Horas laboradas: $horas');
  print('Total devengado: \$${totalDevengado.toInt()}');
}
