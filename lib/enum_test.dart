import '../dart_tutorial_practice/constants.dart' ;

enum Gender { Male, Female, Other }

class person{
  String? name;
  String? phone;
  Gender? gender;

  person(this.name, this.phone, this.gender);

  void display(){
    print("Name : ${name}");
    print("Phone : ${phone}");
    print("Gender : ${gender}");
  }
}
main(){
  person person1=person("Abijit.", "+880 1879302066", Gender.Male);
  person person2=person("Abi.", "+880 1812080866", Gender.Male);
  person1.display();
  person2.display();


  print(Constants.pi);
}