//Obtener el promedio de las notas de un estudiante a partir de sus 3 notas

import 'dart:io';

void main() {
  double? nota1;
  print('Digite la primera nota:');
  nota1 = double.parse(stdin.readLineSync()!);
  print('La primera nota es: $nota1');

  double? nota2;
  print('Digite la segunda nota:');
  nota2 = double.parse(stdin.readLineSync()!);

  double? nota3;
  print('Digite la tercera nota:');
  nota3 = double.parse(stdin.readLineSync()!);

  double promedio = (nota1! + nota2! + nota3!) / 3;
  print('El promedio de las notas es: $promedio');
}