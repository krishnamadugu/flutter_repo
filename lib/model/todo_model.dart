class ToDoModel {
  final String name;
  final DateTime createdAt;

  ToDoModel({
    required this.name,
    required this.createdAt,
  });

  @override
  String toString() {
    return 'ToDoModel{name: $name, dateTime: $createdAt}';
  }
}
