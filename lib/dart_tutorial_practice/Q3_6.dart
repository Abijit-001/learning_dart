import 'dart:io';

/// https://dart-tutorial.com/functions/questions-for-practice-3/

main(){
  stdout.write("Enter a string : ");
  String st=stdin.readLineSync()!;
  String rst='';
  for(int i=st.length-1;i>=0;i--){
    rst=rst+st[i];
  }
  print("Reversed using loop : $rst.");

  print("Reversed using named constructor : ${st.split("").reversed.join('')}.");
}