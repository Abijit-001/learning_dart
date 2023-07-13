import 'dart:collection';
import 'dart:io';
main(){
  ranQueue();
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
