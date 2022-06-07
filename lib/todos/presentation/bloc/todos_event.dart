import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_2/todos/domain/model/todos_model.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

//-------------------- /Mostrar a lista/ -------------------//

class ShowTodos extends TodosEvent {
  final List<String> todos;
  const ShowTodos(this.todos);

  @override
  List<Object> get props => [];
}

//-------------------- /Adicionar na lista/ -------------------//

class AddTodo extends TodosEvent {
  final TodosModel todo;
  const AddTodo({required this.todo});

  @override
  List<Object> get props => [];
}

//-------------------- /Remover da lista/ -------------------//

class RemoveTodo extends TodosEvent {
  final String id;
  const RemoveTodo(this.id);

  @override
  List<Object> get props => [];
}

//-------------------- /Editar na lista/ -------------------//

class UpdateTodo extends TodosEvent {
  final String id;
  final String updatedTodo;
  const UpdateTodo(this.id, this.updatedTodo);

  @override
  List<Object> get props => [];
}
