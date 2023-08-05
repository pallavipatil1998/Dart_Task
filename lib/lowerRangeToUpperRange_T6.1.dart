//LowerRange To UpperRange

import 'dart:io';

void main(){
  print('Enter Lower Range: ');
  int lowerRange=getIntValue();
  print('EnterUpper Range: ');
  int upperRange=getIntValue();

  List<int> evenList=[];
  List<int> oddList=[];
  List<int> primeList=[];

  for(int i=lowerRange;i<=upperRange;i++){
    if(isEven(i)){
      evenList.add(i);
    }

    if(isOdd(i)){
      oddList.add(i);
    }

    if(isPrimeFunc(i)){
      primeList.add(i);
    }

  }

  print('Even No List: $evenList');
  print('Odd No list: $oddList');
  print('Prime No list:$primeList');
}

//func For read value from console
String getValue()=>stdin.readLineSync()!;
int getIntValue()=>int.parse(getValue());

//func for Even NO
bool isEven(int a){
  return a%2==0;
}

//func for Odd No
bool isOdd(int a){
  return a%2!=0;
}

//func for Prime No
isPrimeFunc(int a){
  bool isPrime=true;
  for(int i=2;i<=a/2;i++){
    if(a%i==0){
      isPrime=false;
      break;
    }
  }
  return isPrime;
}