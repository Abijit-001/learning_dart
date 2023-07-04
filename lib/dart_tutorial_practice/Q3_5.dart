
import 'dart:io';
import 'dart:math';

/// https://dart-tutorial.com/functions/questions-for-practice-3/

main(){
  stdout.write("Enter value of base : ");
  double? base =double.tryParse(stdin.readLineSync()!);
  stdout.write("Enter value of perpendicular : ");
  double? perp =double.tryParse(stdin.readLineSync()!);

  (base!=null&&perp!=null) ? print("Value of Hypotenuse ${findHypotenuse(base, perp).toStringAsFixed(4)}.") : exit(0);
}

///Q3_7 : Write a program in Dart to calculate power of a certain number.
double findHypotenuse(double base, double perp) =>sqrt(pow(base, 2)+pow(perp,2));