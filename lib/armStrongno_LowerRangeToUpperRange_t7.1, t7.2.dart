import 'dart:io';
import 'dart:math';

void main(){
  print("Enter Lower Range of ArmStrong no :");
  int lowerRange=getIntValue();

  print("Enter Upper Range of ArmStrong no :");
  int upperRange=getIntValue();

    isArmStrong(upperRange);
    List<int> ArmStronList=[];
  for(int i=lowerRange;i<=upperRange;i++){
    if(isArmStrong(i)==true){
      ArmStronList.add(i);
    }
  }
  print(ArmStronList);
}


getIntValue()=>int.parse(stdin.readLineSync()!);


bool isArmStrong(int no){
  int temp=no;
  int sum=0;
  int last=0;
  int count=0;

  while(temp>0){     //length
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
    print("$no is ArmStrong No");
    return true;
  }else{
    print("$no is not ArmStrong No");
    return false;
  }

}