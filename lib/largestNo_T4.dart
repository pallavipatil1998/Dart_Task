import 'dart:io';

void main(){
  var largeNo =LargestNo();
  largeNo.checkLargeNo();
}

class LargestNo{

  checkLargeNo(){
    stdout.write('Enter No1:');
    int no1 =int.parse(stdin.readLineSync()!);
    stdout.write('Enter No1:');
    int no2 =int.parse(stdin.readLineSync()!);
    stdout.write('Enter No1:');
    int no3 =int.parse(stdin.readLineSync()!);

    if(no1>no2 && no1>no3){
      print('$no1 is Largest Number');
    }else{
      if(no2>no1 && no2>no3){
        print('$no2 is Largest Number');
      }else{
        print('$no3 is Largest Number');
      }

    }
  }

}