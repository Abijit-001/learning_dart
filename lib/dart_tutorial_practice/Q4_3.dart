import 'dart:io';
/// Q4_3 : Create a program that reads list of expenses amount using user input and print total.
main(){
  stdout.write("Enter total number of expenses : ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  double totalExpense=0;
  for(int i=0;i<n;i++){

    stdout.write("Enter your #${i+1}. expense : ");
    totalExpense=totalExpense+double.parse(stdin.readLineSync()!);

  }
  print(totalExpense);

}