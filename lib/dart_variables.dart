late String lastName;
main(){
  var firstName = 'Abijit';
  lastName = 'Barua';
  print(firstName + " "+lastName);

  int amount = 100;
  double dAmount = 500.78001120000127;
  print("Amount Integer : $amount | Amount Double : "+dAmount.toStringAsFixed(5));

  dynamic year = 18;
  int age = year;
  if(year>=18) {
    year='voter';
    print(year);
  }else {
    print("Not Voter");
  }
  print((age>13 && age<19)? "Teenager" : "Not Teenager");

  const emojiMan = '🥰';
  print(emojiMan.runes);

  for (final item in emojiMan.codeUnits) {
    print(item.toRadixString(16));
  }
}