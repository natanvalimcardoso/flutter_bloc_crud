import 'package:equatable/equatable.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class LoadedTodos extends TodosEvent{

}

class AddTodo extends TodosEvent{}

class RemoveTodo extends TodosEvent{}

class UpdateTodo extends TodosEvent{}


