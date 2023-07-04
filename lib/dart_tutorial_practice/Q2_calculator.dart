import 'dart:io';

/// https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/
main() {
  stdout.write("Enter an operator (+, -, *, /),if want to exit press x: ");
  var op = stdin.readLineSync();
  while (op != 'x') {
    switch (op) {
      case '+':
        performAddition();
        break;
      case '-':
        stdout.writeln("Please enter operands with symbol.");
        performAddition();
        break;
      case '*':
        performMultiplication();
        break;
      case '/':
        performDivision();
        break;
      default:
        break;
    }
  }
}

void performDivision() {
  late var total ;

  stdout.write('Enter #1 operand : ');
  var i = int.tryParse(stdin.readLineSync()!);
  stdout.write('Enter #2 operand : ');
  var j = int.tryParse(stdin.readLineSync()!);
  total = (i!/j!);

  print('\nDivided value : $total');
}

void performMultiplication() {
  var i = 0;
  var total = 1;
  stdout.write("Total number of operands : ");
  int? j = int.tryParse(stdin.readLineSync()!);

  if (j != null) {
    while (i < j) {
      stdout.write('Enter #${i + 1} operand : ');
      var x = stdin.readLineSync();
      if (x == null) continue;
      var n = int.tryParse(x);
      if (n == null) continue;
      total = total * n;
      i++;
    }

    print('\nMultiplied value : $total');
  }
}

void performSubtraction() {
  var i = 0;
  var total = 0;
  stdout.write("Total number of operands : ");
  int? j = int.tryParse(stdin.readLineSync()!);

  if (j != null) {
    while (i < j) {
      stdout.write('Enter #${i + 1} operand : ');
      var x = stdin.readLineSync();
      if (x == null) continue;
      var n = int.tryParse(x);
      if (n == null) continue;
      total = total - n;
      i++;
    }

    print('\nSubtracted value : $total');
  }
}

void performAddition() {
  var i = 0;
  var total = 0;
  stdout.write("Total number of operands : ");
  int? j = int.tryParse(stdin.readLineSync()!);

  if (j != null) {
    while (i < j) {
      stdout.write('Enter #${i + 1} operand : ');
      var x = stdin.readLineSync();
      if (x == null) continue;
      var n = int.tryParse(x);
      if (n == null) continue;
      total = total + n;
      i++;
    }

    print('\nAdded value : $total');
  }
}
