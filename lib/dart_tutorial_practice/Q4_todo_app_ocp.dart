import 'dart:io';

abstract class ToDoAction {
  void execute(List<String> todo);
}

class AddToDoAction implements ToDoAction {
  @override
  void execute(List<String> todo) {
    stdout.write("Enter task: ");
    todo.add(stdin.readLineSync()!);
  }
}

class RemoveToDoAction implements ToDoAction {
  @override
  void execute(List<String> todo) {
    if (todo.isNotEmpty) {
      todo.removeLast();
      stdout.writeln("Last task removed.");
    } else {
      stdout.writeln("No tasks to remove.");
    }
  }
}

class ViewToDoAction implements ToDoAction {
  @override
  void execute(List<String> todo) {
    if (todo.isNotEmpty) {
      print("\n${todo.join("\n")} \n");
    } else {
      stdout.writeln("No tasks to view.");
    }
  }
}

class ToDoList {
  List<String> todo = [];

  void start() {
    stdout.writeln("Select what you want to do: \n1.Add \n2.Remove \n3.View ");
    int i = int.parse(stdin.readLineSync()!);
    goTo(i);
  }

  void goTo(int i) {
    ToDoAction action;

    switch (i) {
      case 1:
        action = AddToDoAction();
        break;
      case 2:
        action = RemoveToDoAction();
        break;
      case 3:
        action = ViewToDoAction();
        break;
      default:
        exit(0);
    }

    action.execute(todo);
    start();
  }
}

void main() {
  ToDoList().start();
}
