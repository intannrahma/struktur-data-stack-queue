import 'stack.dart';

void main() {
  // Membuat objek tumpukan
  var stack = Stack<int>();

  // Menambahkan beberapa elemen ke dalam tumpukan
  stack.push(1);
  stack.push(2);
  stack.push(3);

  // Mencetak isi tumpukan
  print('Stack: $stack'); // Output: Stack: [1, 2, 3]

  // Menghapus dan mencetak elemen teratas dari tumpukan
  print('Popped element: ${stack.pop()}'); // Output: Popped element: 3
  print('Stack: $stack'); // Output: Stack: [1, 2]

  // Menambahkan elemen baru ke dalam tumpukan
  stack.push(4);
  print('Stack: $stack'); // Output: Stack: [1, 2, 4]

  // Mencetak elemen teratas dari tumpukan tanpa menghapusnya
  print('Top element: ${stack.top}'); // Output: Top element: 4
  print('Stack: $stack'); // Output: Stack: [1, 2, 4]
}

