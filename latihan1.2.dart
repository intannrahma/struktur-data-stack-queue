class CircularQueue {
  List<int> queue;
  int front = -1;
  int rear = -1;
  int size;

  CircularQueue(this.size) : queue = List<int>.filled(size, 0);

  bool isEmpty() => front == -1;
  bool isFull() => (rear + 1) % size == front;

  void enqueue(int value) {
    if (isFull()) {
      print("Queue is full!");
      return;
    }
    front = (front == -1) ? 0 : front;
    rear = (rear + 1) % size;
    queue[rear] = value;
    print("Enqueued: $value");
  }

  void dequeue() {
    if (isEmpty()) {
      print("Queue is empty!");
      return;
    }
    print("Dequeued: ${queue[front]}");
    front = (front == rear) ? -1 : (front + 1) % size;
  }

  void display() {
    if (isEmpty()) {
      print("Queue is empty!");
      return;
    }
    int i = front;
    while (i != rear) {
      print(queue[i]);
      i = (i + 1) % size;
    }
    print(queue[rear]);
  }
}

void main() {
  var cq = CircularQueue(5);
  cq.enqueue(10);
  cq.enqueue(20);
  cq.enqueue(30);
  cq.display();
  cq.dequeue();
  cq.enqueue(40);
  cq.display();
}
