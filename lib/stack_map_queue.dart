import 'dart:collection';
import 'dart:io';

main(){
  ranQueue();
  ranMap();
  runStack();
  /*var s=Stack2();
  s.push(1);
  s.push(2);
  s.push(3);
  s.pop();
  s.peak();*/
}

void runStack() {
  final stack =Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  stack.push(5);
  stdout.write(stack.pop());
  stdout.write(stack.pop());
  stdout.write(stack.pop());
  stdout.write(stack.pop());

}

class Stack<T>{
  final queue=Queue<T>();
  void push(T t){
    queue.addFirst(t);
  }
  T pop(){
    final first=queue.first;
    queue.removeFirst();
    return first;
  }
}

void ranMap() {
    var details = {'Username':'tom','Password':'pass@123'};
    details['Uid'] = 'U1oo1';
    print(details);
    details.removeWhere((key, value) => value=='U1oo1');
    print(details);

}

void ranQueue() {
  final queue = Queue ();
  print(queue.runtimeType);

// Adding items to queue
  queue.addAll([1, 2, 3]);
  queue.add(4);
  queue.addFirst(0);
  queue.addLast(9);
  queue.addLast(10);
  print(queue); // {0, 1, 2, 3, 4, 9, 10}
  queue.removeLast();
  queue.remove(2);
  queue.removeWhere((element) => element==3);
  print(queue);
  print(queue.every((element) => element <20));
  print(queue.join(' - '));

}

class Stack2 {
  List<int> list = [];


  void push(int val) {
    list.add(val);
  }

  void pop() {
    list.removeLast();
  }

  void peak() {
    print('${list[list.length - 1]}');
  }
}
