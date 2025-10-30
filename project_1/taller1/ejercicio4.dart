import 'dart:io';

void ejercicio4(){

  String? nombre;
  print('digital el nombre');
  nombre= stdin.readLineSync();

  double? valorH;
  print('ingresa el valor de las horas');
  valorH=double.parse(stdin.readLineSync()!);

  double? horasTrabajadas;
  print('ingresa las horas trabajadas');
  horasTrabajadas=double.parse(stdin.readLineSync()!);


  double salario= horasTrabajadas * valorH;

  print('El empleado $nombre, trabajo $horasTrabajadas horas en el mes y devengo  $salario');

}