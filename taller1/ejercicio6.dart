import 'dart:io';

void ejercicio6 (){
  double? gCelcius;
  print('Ingresa su tempertura en grados celcius');
  gCelcius=double.parse(stdin.readLineSync()!);

  double gFahrenheit = (gCelcius * 1.8) + 32;
  print('Al hacer la onvercion de temperatura en Fahrenheit es $gFahrenheit');

}