import 'constants.dart' ;

enum Gender { Male, Female, Other }

class Person{
  String? name;
  String? phone;
  Gender? gender;

  Person(this.name, this.phone, this.gender);

  void display(){
    print("Name : $name");
    print("Phone : $phone");
    print("Gender : $gender");
  }
}
main(){
  Person person1=Person("Abijit.", "+880 1879302066", Gender.Male);
  Person person2=Person("Abi.", "+880 1812080866", Gender.Male);
  person1.display();
  person2.display();

  print(Constants.pi);
}