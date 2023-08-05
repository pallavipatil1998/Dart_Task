import 'dart:io';

void main(){
  print('Enter no:');
  int term=getIntValue();
  List<int> EvenList=[];
  List<int> OddList=[];
  List<int> PrimeList=[];
  // int count=0;
  int no =1;


  while(EvenList.length<term){
    if(isEven(no)){
      // count++;
      EvenList.add(no);
    }
    no++;
  }
  no=1;
  while(OddList.length<term){
    if(isOdd(no)){
      // count++;
      OddList.add(no);
    }
    no++;
  }
  no=1;
  while(PrimeList.length<term){
    if(isPrime(no)){
      // count++;
      PrimeList.add(no);
    }
    no++;
  }

  print('Even No: $EvenList');
  print('Odd No: $OddList');
  print('Prime No: $PrimeList');

}


String getValue()=>stdin.readLineSync()!;
int getIntValue()=>int.parse(getValue());

bool isEven(int num){
  return num%2==0;
}

bool isOdd(int num){
  return num%2!=0;
}

bool isPrime(int num){
  bool IsPrime=true;
  for(int i=2;i<=num/2;i++){
    if(num%i==0){
      IsPrime=false;
    }
  }
  return IsPrime;
}