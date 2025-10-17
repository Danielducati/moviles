import 'dart:io';

void main() {
  print('Ingrese el número de partidos ganados:');
  int ganados = int.parse(stdin.readLineSync()!);

  print('Ingrese el número de partidos empatados:');
  int empatados = int.parse(stdin.readLineSync()!);

  print('Ingrese el número de partidos perdidos:');
  int perdidos = int.parse(stdin.readLineSync()!);

  // Cálculo del puntaje
  int puntajeTotal = (ganados * 3) + (empatados * 1) + (perdidos * 0);



  print('El número de partidos ganados es: $ganados');
  print('El número de partidos empatados es: $empatados');
  print('El número de partidos perdidos es: $perdidos');

  print('El puntaje total del equipo es: $puntajeTotal');
}
