import 'dart:collection';

void main() {

  Queue<int> queue = Queue<int>();

  queue.add(10);
  queue.add(20);
  queue.add(30);
  print("Queue setelah enqueue: $queue");

  queue.removeFirst();
  print("Queue setelah dequeue: $queue");

  queue.add(40);
  print("Queue setelah enqueue lagi: $queue");

  print("Isi Queue: $queue");
}
