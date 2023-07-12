import 'dart:io';

main(){
  stdout.write("Enter total number of expenses : ");
  int n = int.tryParse(stdin.readLineSync()!)!;
  List<double> expenseList=[];
  double totalExpense=0;
  for(int i=0;i<n;i++){

    stdout.write("Enter your #${i+1}. expense : ");
    totalExpense=totalExpense+double.parse(stdin.readLineSync()!);

  }
  print(totalExpense);

}