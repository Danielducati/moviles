import 'dart:io';

void ejercicio3(){
   int? pGanados;
  print('Ingresa los partidos ganados');
  pGanados=int.parse(stdin.readLineSync()!);


  int? pPerdidos;
  print('Ingresa partidos perdidos');
  pPerdidos=int.parse(stdin.readLineSync()!);

  int? pEmpatados;
  print('Ingresa los partidos empatados');
  pEmpatados=int.parse(stdin.readLineSync()!);

  int totalPuntos= (pGanados * 3) + pEmpatados;

  print('la cantidad de juegos ganadso es $pGanados');
  print('la cantidad de juegos empatados es $pEmpatados');
  print('la cantidad de juegos perdidos es $pPerdidos');
  print('EL total de puntos es $totalPuntos');

}