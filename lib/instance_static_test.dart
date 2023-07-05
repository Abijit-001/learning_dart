import 'dart:io';

class Employee{
  static String? name;
  int? designation_id;

  void isSenior(){
    (designation_id!>1)? print("Senior $name"):exit(0);
  }
}
main(){
  Employee.name="xyz";
  Employee employee=Employee();
  employee.designation_id=3;
  employee.isSenior();
}