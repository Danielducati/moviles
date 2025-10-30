import 'dart:io';

void ejercicio2(){
  double? nota1;
  print('Ingresa la nota 1');
  nota1= double.parse(stdin.readLineSync()!);

  double? nota2;
  print('Ingresa la nota 2');
  nota2= double.parse(stdin.readLineSync()!);

  double? nota3;
  print('Ingresa la nota 3');
  nota3= double.parse(stdin.readLineSync()!);

  double promedio =(nota1 + nota2 + nota3)/3;
  print('Su nota final del semestre es $promedio');
}
