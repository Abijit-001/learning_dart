main(){
  Map<String,dynamic> user = {
    "Name" : "Abijit Barua",
    "Address" : "Dhaka, Bangladesh",
    "Age" : 23,
    "Country" : "Bangladesh"
  };

  /// Q4_6 : Create a map with name, address, age, country keys and store values to it. Update country name to other country and print all keys and values.
  print("${user.keys} and ${user.values}.");

  user.update("Country", (value) => value="Canada");
  print(user);


  /// Q4_7 : Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  keyStorer();
}

void keyStorer() {
  Map<String,String> passBook= {
    "Abijit" : "1234",
    "Avi" : "123334",
    "Sany" : "54321",
    "Jit" : "0987",
    "Barua" : "5578",
  };

  List<String> keys=passBook.values.toList();
  for (String s in keys){
    if(s.length<5) print(s);
  }
  passBook.removeWhere((key, value) => value.length < 5);
  print(passBook.values.toList());
}