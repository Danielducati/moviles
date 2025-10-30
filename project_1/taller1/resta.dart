import 'dart:io';

void resta(){
  print('digite los 2 valores: ');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int resultado = a - b;
  print('el resultado de la resta es: $resultado');

}