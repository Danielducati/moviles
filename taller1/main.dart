import 'ejercicio1.dart';
import 'ejercicio2.dart';
import 'ejercicio3.dart';
import 'ejercicio4.dart';
import 'ejercicio5.dart';
import 'ejercicio6.dart';

import 'dart:io';

void main(){
  print('digite 1 - para sumar y 2 - para restar: ');
  int opcion = int.parse(stdin.readLineSync()!);

  switch(opcion){
    case 1:
      ejercicio1();
      break;
    case 2:
      ejercicio2();
      break;
    case 3:
      ejercicio3();
      break;
    case 4:
      ejercicio4();
      break;
    case 5:
      ejercicio5();
      break;
    case 6:
      ejercicio6();
      break;
    default:
      print('opcion no valida');
  }
}