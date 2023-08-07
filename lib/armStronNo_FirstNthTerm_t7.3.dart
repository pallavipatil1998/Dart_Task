import 'dart:io';
import 'dart:math';

void main(){
  print('Enter First Nth Term: ');
  int term=getIntValue();
  int num=1;

  List<int> ArmStrongList=[];
  while(ArmStrongList.length<term){
    if(isArmStrong(num)){
      ArmStrongList.add(num);
    }
    num++;
  }

  print(ArmStrongList);
}

int getIntValue()=>int.parse(stdin.readLineSync()!);

bool isArmStrong(int no){
  int temp=no;
  int count=0;
  int last=0;
  int sum=0;

  while(temp>0){
    temp=temp~/10;
    count++;
  }
  temp=no;

  while(temp>0){
    last=temp%10;
    sum=sum+pow(last, count) as int;
    temp=temp~/10;
  }

  if(sum==no){
    return true;
  }else{
    return false;
  }

}