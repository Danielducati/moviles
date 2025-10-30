import 'dart:io';


void ejercicio1(){
  double? velocidad;
  print('Ingresa su velocidad');
  velocidad=double.parse(stdin.readLineSync()!);


  double? tiempo;
  print('Ingresa su tiempo');
  tiempo=double.parse(stdin.readLineSync()!);

  double distancia= velocidad * tiempo;
  print('La distacia recorridad fue $distancia metros');
  

}

