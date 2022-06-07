import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_2/todos/domain/model/todos_model.dart';

import '../repository/todos_repository.dart';
import 'todos_event.dart';
import 'todos_states.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final todosRepository = TodosRepositoryFake();

  TodosBloc() : super(const TodosInitial()) {
    on<AddTodo>(_createTodos);
    on<ShowTodos>(_onShowTodos);
  }

  Future<void> _createTodos(event, emit) async {
    emit(TodosLoading());
    try {
      final todos = await todosRepository.addTodos(event.todo);
      emit(TodosLoaded(todos: todos));
    } catch (e) {
      emit(TodosException(e.toString()));
    }
  }

  Future<void> _onShowTodos(event, emit) async {
    emit(TodosLoading());
    try {
      final List<TodosModel> todos = await todosRepository.showTodos(event.todo);
      emit(TodosLoaded(todos: todos));
    } catch (error) {
      emit(TodosException(error.toString()));
    }
  }
}




  
// Future _createTodo(String title) async {
//     final todosModel = TodosModel(title: title);
//     final todos = await todosRepository.addTodos(todosModel);
//     return todos;
//   }



