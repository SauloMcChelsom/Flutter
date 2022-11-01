import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

main() {
  final respository = TodoRepository();

  test('deve trazer uma lista de TodoModel',() async {
    final list = await respository.fetchTodos();
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}