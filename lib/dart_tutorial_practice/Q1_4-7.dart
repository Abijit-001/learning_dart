///Questions: https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
import 'dart:io';

main() {
  stdout.writeln("Enter the Principle : ");
  double p=double.parse(stdin.readLineSync()!);
  stdout.writeln("Enter the Time period in years : ");
  int t=int.parse(stdin.readLineSync()!);
  stdout.writeln("Enter the Rate of interest per annum : ");
  double r=double.parse(stdin.readLineSync()!);

  var Formula= (p * t * r) / 100;
  print("After $t year profit will be $Formula.");

  double sq_Formula= Formula*Formula;
  print("Square of profit will be "+sq_Formula.toString()+".");

  print("The quotient of T and R "+(t/r).toString()+" and remainder "+(t%r).toString()+".");


}