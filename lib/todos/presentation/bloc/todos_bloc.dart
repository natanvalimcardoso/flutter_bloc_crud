import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_2/todos/presentation/repository/todos_repository.dart';

import 'todos_event.dart';
import 'todos_states.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosInitial()){
    on<ShowTodos>(_showTodos);
  }

  Future<void> _showTodos(event, emit) async {
    emit(TodosLoading());
    try {
      final List<String> todos = await showTodosFunction();
      emit(TodosLoaded(todos));
    } catch (error) {
      emit(TodosException(error.toString()));
    }
  }
}

List<String> showTodosFunction() {
  return TodosRepositoryFake.todos;
}

 addTodo(){
    
 } 
