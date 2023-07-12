main(){
  Map<String,dynamic> user = {
    "Name" : "Abijit Barua",
    "Address" : "Dhaka, Bangladesh",
    "Age" : 23,
    "Country" : "Bangladesh"
  };

  print("${user.keys} and ${user.values}.");

  user.update("Country", (value) => value="Canada");
  print(user);

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