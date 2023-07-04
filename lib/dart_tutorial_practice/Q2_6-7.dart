
import 'dart:io';

/// https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/

main(){
  int i=1;
  stdout.write("Generate multiplication tables of 1-");
  int n=int.parse(stdin.readLineSync()!);
  for(i;i<=n;i++){
    print("\nMultiplication table of $i:\n");
    for(int j=1;j<=10;j++){
      print("$i X $j = ${i*j}");
    }
  }
}