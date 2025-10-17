import 'dart:io';
import 'dart:math';


void main() {
  double? v;
  print('Digite la velocidad:');
  v = double.parse(stdin.readLineSync()!);
  print('La velocidad es: $v km/h');

  double? t;
  print('Digite el tiempo en horas:');
  t = double.parse(stdin.readLineSync()!);
  print('El tiempo es: $t horas');

  double d = v * t;
  print('La distancia es: $d km');
}


