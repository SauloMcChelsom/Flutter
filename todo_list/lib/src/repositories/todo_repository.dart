import 'package:dio/dio.dart';
import 'package:todo_list/src/models/todo_model.dart';

class TodoRepository {
  final dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => TodoModel.fromJson(json)).toList();
    /*List<TodoModel> todos = [];
    for (var item in list) {
      final todo = TodoModel.fromJson(item);
      todos.add(todo);
    }

    return todos;*/
  }
}