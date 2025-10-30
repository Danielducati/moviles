import 'ejercicio1.dart';
import 'ejercicio2.dart';
import 'ejercicio3.dart';
import 'ejercicio4.dart';
import 'ejercicio5.dart';
import 'ejercicio6.dart';

import 'dart:io';

void main(){
  while (true) {
    print('Seleccione el ejercicio que desea ejecutar:\n1. Ejercicio 1\n2. Ejercicio 2\n3. Ejercicio 3\n4. Ejercicio 4\n5. Ejercicio 5\n6. Ejercicio 6\n0. Salir');
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
    case 0:
      print('Saliendo del programa.');
      return;

    default:
      print('opcion no valida');
    }
  }
}