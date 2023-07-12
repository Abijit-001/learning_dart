import 'dart:io';

main(){
  ///Q4_1 : Create a list of names and print all names using list.
  printAllName();

  ///Q$_2 : Create a set of fruits and print all fruits using loop.
  printAllFruit();
}

void printAllFruit() {
  Set<String> fruits = {"Mango","Lechi","Orange","Lechi","Jack fruit"};
  for(String s in fruits){
    print("${s.toUpperCase()} ");
  }

  Set<String> fruits2 = {"Apple", "Grapes", "Banana","Orange","Mango"};

  final differenceSet = fruits.difference(fruits2);
  print(differenceSet.join(", "));

  final intersection=fruits.intersection(fruits2);
  print(intersection.join(", "));

}

void printAllName() {
  List<String> names = ["Abi", "Rabi", "Rocky"];
  List<String> names2 = ["Kabi", "Chabi", "Babi"];

  List<String> allNames = [...names, ...names2];
  print(allNames.join(", "));
}