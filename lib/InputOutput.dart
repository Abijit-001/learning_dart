import 'dart:io';

main(){
  print("What is your name?");

  var name= stdin.readLineSync();

  print("My name is $name.");
  print("Whats your phone number?");

  var phone = stdin.readLineSync();
  // if(phone?.length!=11) print('Phone number must have 11 digit.');
  print((phone?.length!=11)? "Phone number must have 11 digit.":"Phone number Saved.");

}