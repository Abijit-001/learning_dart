///Questions: https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
import 'dart:io';

main() {
  stdout.write("Enter the Principle : ");
  double p=double.parse(stdin.readLineSync()!);
  stdout.write("Enter the Time period in years : ");
  int t=int.parse(stdin.readLineSync()!);
  stdout.write("Enter the Rate of interest per annum : ");
  double r=double.parse(stdin.readLineSync()!);

  var formula= (p * t * r) / 100;
  print("After $t year profit will be $formula.");

  double sqFormula= formula*formula;
  print("Square of profit will be $sqFormula.");

  print("The quotient of T and R ${t/r} and remainder ${t%r}.");


}