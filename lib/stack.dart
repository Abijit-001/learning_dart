import 'dart:collection';
import 'dart:io';

main(){
  runStack();
  var s=Stack2();
  s.push(1);
  s.push(2);
  s.push(3);
  s.pop();
  s.peak();
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
