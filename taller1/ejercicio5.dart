import 'dart:math';
import 'dart:io';

void ejercicio5 (){
  double? a;
  print('ingresa la altura del trinagulo');
  a=double.parse(stdin.readLineSync()!);


  double? b;
  print('ingresa la base del trinagulo');
  b=double.parse(stdin.readLineSync()!);

  double hipo= sqrt(pow(b,2)+ pow(a, 2));
  print( 'la hipotenusa es $hipo');


}