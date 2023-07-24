///Questions: https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
import 'dart:io';
main(){
  stdout.writeln("Enter 2 number : ");
  stdout.write("a - ");
  var a=double.parse(stdin.readLineSync()!);
  stdout.write("b - ");
  var b=double.parse(stdin.readLineSync()!);

  a=a+b;
  b=a-b;
  a=a-b;
  print("After swap a = $a and b = $b");
}