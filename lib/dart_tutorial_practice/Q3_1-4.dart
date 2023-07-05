import 'dart:io';
import 'dart:math';

/// https://dart-tutorial.com/functions/questions-for-practice-3/

// const pi=3.1416;
main(){
  ///Q3_1 : Print your own name using function.
  print(myName());

  ///Q3_2 : Write a program in Dart to print even numbers between intervals using function
  stdout.write("Enter Intervals : ");
  int? start = int.tryParse(stdin.readLineSync()!);
  int? end = int.tryParse(stdin.readLineSync()!);
  if(start!=null&&end!=null){
    findEvens(start,end);
  }

  ///Q3_3 : Write a program in Dart that generates random password.
  print(randomPassword());

  ///Q3_4 : Write a program in Dart that find the area of a circle using function.
  stdout.write("Enter radius : ");
  var r = double.tryParse(stdin.readLineSync()!);
  (r!=null)? print("Area of circle is ${findAreaOfCircle(r)}."):double.tryParse(stdin.readLineSync()!);
}

double findAreaOfCircle(double r) => pi*r*r;

String randomPassword() {
  var r = Random.secure();
  const alphanums = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  String password = List.generate(8, (index) => alphanums[r.nextInt(alphanums.length)]).join();
  return "Your password can be : $password.";
}

void findEvens(int start, int end) {
  for(start;start<=end;start++){
    if(start.isEven){
      print(start);
    }
  }
}

String myName()=> "Abijit Barua";