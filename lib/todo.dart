import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Todo {
  int? id;
  final String name;
  final int quantity;
  final int date;

  Todo({this.id,
      required this.name,
      required this.quantity,
      required this.date});

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 
      "id": id,
      "name": name,
      "quantity": quantity,
      "date": date
    };
  }
}

class DbHelper {
  Future<void> insertTodo(Todo todo) async {
    final db = await openDatabase(join(await getDatabasesPath(), "todos.db"));
    await db.insert("todos", todo.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<List<Todo>> todos() async {
    final db = await openDatabase(join(await getDatabasesPath(), "todos.db"));
    final List<Map<String, dynamic>> todosMap = await db.query("todos");
    return [
      for (final {
            "id": id as int,
            "name": name as String,
            "quantity": quantity as int,
            "date": date as int
          } in todosMap)
        Todo(id: id, name: name, quantity: quantity, date: date)
    ];
  }
}
