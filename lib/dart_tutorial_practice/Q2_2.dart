import 'dart:io';


/// https://dart-tutorial.com/conditions-and-loops/questions-for-practice-2/

main(){
  stdout.write("Enter a Character : ");
  String char = stdin.readLineSync()!;
  stdout.writeln(
      "*In the case of String input, only one character will be taken.");

  var s = char[0];

  if (!RegExp(r'^[a-z A-Z]+$').hasMatch(s)) {
    print("$s is not a Alphabet.");
  } else {
    print(isVowel(s.toLowerCase()));
  }
}

Object? isVowel(String s) {
  switch (s) {
    case "a":
      return "$s is a vowel.";
    case "e":
      return "$s is a vowel.";
    case "i":
      return "$s is a vowel.";
    case "o":
      return "$s is a vowel.";
    case "u":
      return "$s is a vowel.";
    default:
      return "$s is a Consonant.";
  }
}