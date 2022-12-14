import 'package:flutter/material.dart';
import 'package:todo_list/src/models/todo_model.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class HomeController {
  List<TodoModel> todos = [];
  final TodoRepository _repository;
  final state = ValueNotifier<HomeState>(HomeState.start);
  //HomeState state = HomeState.start; //não reativo

  HomeController([TodoRepository? repository])
  :_repository = repository ?? TodoRepository();

  Future start() async {
    state.value = HomeState.loading;
    try{
      todos = await _repository.fetchTodos();
      state.value = HomeState.success; 
      return todos;
    } catch (e){
      state.value = HomeState.error;
    }
  }
}

enum HomeState { start, loading, success, error }