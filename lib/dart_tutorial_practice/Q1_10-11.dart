///Questions: https://dart-tutorial.com/introduction-and-basics/questions-for-practice-1/
import 'dart:io';

main(){
  stdout.writeln("Enter total bill : ");
  double? totalBill = double.tryParse(stdin.readLineSync()!);

  stdout.writeln("Enter number of friend : ");
  int? n= int.tryParse(stdin.readLineSync()!); //tryParse to return null

  double Formula= (totalBill! / n!); //(~/) to return int value instead of double

  print("Total bill is $totalBill.");
  print("Split amount of bill per person $Formula.");
}