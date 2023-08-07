import 'dart:io';

import 'package:dart_task/armStrongNo_t7.dart';

void main() {
  print("Enter Range of Fibonacci Searies:");
  int seriesRange = getIntValue();
  fibonacci(seriesRange);

  //or use this methode
 /* int seriesRange=int.parse(stdin.readLineSync()!);
  List<int> fiboNacciList=[];
  int a=0,b=1,c;
  for(int i=0;i<=seriesRange;i++){
    c=a+b;
    fiboNacciList.add(c);
    a=b;
    b=c;
}
  print(fiboNacciList);*/
}
getIntValue()=>int.parse(stdin.readLineSync()!);

fibonacci(int seriesRange) {
  List<int> fiboNacciList = [];
  int a = 0, b = 1,c;
  for (int i = 0; i <= seriesRange; i++) {
    c = a + b;
    fiboNacciList.add(c);
    a = b;
    b = c;
  }
  print(fiboNacciList);
}