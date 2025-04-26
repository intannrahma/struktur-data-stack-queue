class Stack<T> {
  final List<T> _list = [];

  void push(T value) => _list.add(value);

  T pop() => _list.removeLast();

  bool get isEmpty => _list.isEmpty;

  bool get isNotEmpty => _list.isNotEmpty;

  T get top => _list.last;

  @override
  String toString() {
    return _list.toString(); // Representasi string dari `_list`
  }
}