//UpperRange Program
import 'dart:io';

void main(){

  getValue()=> stdin.readLineSync()!;
  int getIntValue()=>int.parse(getValue());
  print('Enter Terms :');
  var upperRange=getIntValue();

  List<int> evenList=[];
  List<int> oddList=[];
  List<int> primeList=[];

  for(int i=1;i<=upperRange;i++){
    if(isEven(i)){
      evenList.add(i);
    }

    if(isOdd(i)){
      oddList.add(i);
    }

    if(isPrime(i)){
      primeList.add(i);
    }
  }

  print('All Even No until $upperRange is: $evenList');
  print('All Odd No until $upperRange is: $oddList');
  print('All Prime No until $upperRange is: $primeList');

}


//func for Even No
bool isEven(int no){
  return no%2==0;
}

//func for Odd No
bool isOdd(int no) {
  return no%2!=0;
}

//func for Prime No
bool isPrime(int no) {
  bool isPrime=true;
  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
    }
  }
  return isPrime;

}
