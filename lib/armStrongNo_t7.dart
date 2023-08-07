import 'dart:io';
import 'dart:math';

void main(){
  print('Enter No:');
  int num=getIntValue();
  isArmStrong(num);
}


int getIntValue()=>int.parse(stdin.readLineSync()!);

void isArmStrong(int no){
  int temp=0;
  int sum=0;
  int last=0;
  int digit =0;

  temp=no;

  //find length of no
  while(temp>0){
    temp=temp~/10;
      digit++;          //digit=pow or  no length
    }


  temp=no;
  while(temp>0){
    last=temp%10;    //find last digit of no
  sum=sum+pow(last, digit)as int;
  temp=temp~/10;
}
  if(no==sum){
    print('$no is ArmStrong no');
  }else{
    print("$no  is not ArmStrong no");
  }

}