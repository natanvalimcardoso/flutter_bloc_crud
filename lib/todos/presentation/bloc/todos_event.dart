import 'package:equatable/equatable.dart';

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
  final String todo;
  const AddTodo(this.todo);

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
