//Basic Calculator Project[add,sub,mul,div,mod]
import 'dart:io';
void main(){

  //create class object to access class function
  var mathoperation=MathOperations();

  //call class fun with arguments
  // mathoperation.add(430, 20);
  mathoperation.add();
  mathoperation.sub();
  mathoperation.mul();
  mathoperation.div();
  mathoperation.mod();
}




class MathOperations{
  //create fun with parameter
  // int add(int a,int b){} or
  //func for addition
  int add(){
    print('Addition');
    stdout.write('Enter num1 :');
    int a =int.parse(stdin.readLineSync()!);
    stdout.write('Enter num2 :');
    int b = int.parse(stdin.readLineSync()!);
    int sum = a+b;
    print('Addition of $a and $b is $sum');
    return sum;

  }

  //func for Substraction
  int sub(){
    print('\nSubstraction');
    stdout.write('Enter no1 :');
    int no1= int.parse( stdin.readLineSync()!);
    stdout.write('Enter no2 :');
    int no2 = int.parse(stdin.readLineSync()!);
    int sub= no1-no2;
    print('Sabstraction of $no1 and $no2 is $sub');
    return sub;
  }
  //func for multiplication
  mul(){
    print('\nMultiplication');
    stdout.write('Enter no1:');
    int no1 = int.parse(stdin.readLineSync()!);
    stdout.write('Enter no2 :');
    int no2 = int.parse(stdin.readLineSync()!);
    int mul = no1 * no2;
    print('Multiplication of $no1 & $no2 is $mul');

  }

  //func for division
  double div(){
    print('\nDivision');
    stdout.write('Enter no1:');
    int no1= int.parse(stdin.readLineSync()!);
    stdout.write('Enter no1:');
    int no2= int.parse(stdin.readLineSync()!);
    double div = no1 / no2;
    // int div = no1~/no2;   // ~ o/p  in int
    print('Division of $no1 & $no2 is $div');
    return div;
  }

  mod(){
    print('\nModulus');
    stdout.write('Enter no1:');
    int no1= int.parse(stdin.readLineSync()!);
    stdout.write('Enter no1:');
    int no2= int.parse(stdin.readLineSync()!);
    int  mod = no1 % no2;
    print('Modulus of $no1 & $no2 is $mod');
  }



}