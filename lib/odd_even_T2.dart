//Find Odd Even Number
import 'dart:io';

void main(){

  var check= OddEven();
  check.checkOddEven();
}

class OddEven{

  checkOddEven(){
    stdout.write('Enter Number');
    var no = int.parse(stdin.readLineSync()!);
    if(no%2==0){
      print('$no is Even Number');
    }else{
      print('$no is Odd Number');
    }

  }


}