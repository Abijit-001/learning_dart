import 'dart:io';
/// https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/
main() {
  var arr = <int>[];
  var i = 0;
  var total = 0;
  stdout.write("Total number of Integer : ");
  int? j = int.tryParse(stdin.readLineSync()!);

  if (j != null) {
    while (i < j) {
      stdout.write('Enter #${i + 1} Integer : ');
      var x = stdin.readLineSync();
      if (x == null) continue;
      var n = int.tryParse(x);
      if (n == null) continue;
      arr.add(n);
      total = total + n;
      i++;
    }

    print('\nTotal of those $i Integer while loop: $total');
    total=0;

    arr.forEach((n)=>total= total+ n);
    print('\nTotal of those $i Integer for each loop: $total');

    total=0;
    for(int num in arr){
      total=total+num;
    }

    print('\nTotal of those $i Integer for in loop: $total');
    arr.asMap().forEach((index, value) => print("$value index is $index"));
    // final list = List<int>.generate(grow  5, (index) => index);

    print(arr.fold(arr.length, (i, j) => int.parse(i.toString())+j));
  }


}
