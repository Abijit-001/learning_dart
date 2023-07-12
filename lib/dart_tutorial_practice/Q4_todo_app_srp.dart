import 'dart:io';
List<String> todo=[];
main(){
  stdout.writeln("Select what do want to do : \n1.Add \n2.Remove \n3.View ");
  int i=int.parse(stdin.readLineSync()!);
  goTo(i);
}

void goTo(int i) {
  switch(i){
    case 1:
      addToDo();
      break;
    case 2:
      removeToDo();
      break;
    case 3:
      viewToDo();
      break;
    default:
      exit(0);
  }
}

void viewToDo() {
  print("\n${todo.join("\n")} \n");
  stdout.writeln("Select what do want to do : \n1.Add \n2.Remove \n3.View ");
  int i=int.parse(stdin.readLineSync()!);
  goTo(i);
}

void removeToDo() {
  todo.removeLast();
  stdout.writeln("Last task removed.");
  stdout.writeln("Select what do want to do : \n1.Add \n2.Remove \n3.View ");
  int i=int.parse(stdin.readLineSync()!);
  goTo(i);

}

void addToDo() {
  stdout.write("Enter task : ");
  todo.add(stdin.readLineSync()!);
  stdout.writeln("Select what do want to do : \n1.Add \n2.Remove \n3.View ");
  int i=int.parse(stdin.readLineSync()!);
  goTo(i);
}

