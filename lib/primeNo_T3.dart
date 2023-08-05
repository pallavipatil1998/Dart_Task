import 'dart:io';

void main(){
  var check=PrimeNo();
  check.checkPrimeNo();
}

class PrimeNo{

  checkPrimeNo(){
    bool isPrime=true;
    stdout.write('Enter Number: ');
    var no= int.parse(stdin.readLineSync()!);

    for(var i=2;i<=no/i;i++){
      if(no%i==0){
        isPrime=false;
      }
    }

    if(isPrime){
      print('$no is Prime Number');
    }else{
      print('$no is Not Prime Number');
    }


  }

}



//other methode
/*
void main(){

  bool isPrime=true;

  print('Enter No:');
  int no=int.parse(stdin.readLineSync()!);

  for(int i=2;i<=no/2;i++){
    if(no%i==0){
      isPrime=false;
    }
  }
  if(isPrime){
    print('Prime');
  }else{
    print('not Prime');
  }



}*/
