import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/src/controllers/home_controller.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

void main() {
  final repository = TodoRepository();
  final controller = HomeController(repository);
  List<TodoModel> list = [];

  test('deve trazer uma lista de TodoModel', () async {
    expect(controller.state, HomeState.start);
    list = await controller.start();
    expect(controller.state, HomeState.success);
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}