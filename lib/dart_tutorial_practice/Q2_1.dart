import 'dart:io';

/// https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/

main() {
  stdout.writeln("Enter a Integer : ");
  int n = int.parse(stdin.readLineSync()!);

  ///Q2_1 : Write a dart program to check if the number is odd or even.
  print((n % 2 == 0) ? "$n is Even number." : "$n is Odd number.");


  /// Q2_3 : Write a dart program to check whether a number is positive, negative, or zero.
  print((n == 0) ? "$n is Zero." : (n>0)? "$n is Positive.":"$n is Negative");

}

