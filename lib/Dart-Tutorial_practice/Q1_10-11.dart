import 'dart:ffi';
import 'dart:io';

main(){
  stdout.writeln("Enter total bill : ");
  String totalBill = stdin.readLineSync()!;

  stdout.writeln("Enter number of friend : ");
  int n= int.parse(stdin.readLineSync()!);

  double Formula= (double.parse(totalBill) / n);

  print("Total bill is $totalBill.");
  print("Split amount of bill per person $Formula.");
}