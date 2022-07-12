import 'package:equatable/equatable.dart';

import '../../domain/model/todos_model.dart';

 abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

//-------------------- /Carregando/ -------------------//

class TodosLoading extends TodosState {
  const TodosLoading();
}

//-------------------- /Inicial ou vazio/ -------------------//

class TodosInitial extends TodosState {
  const TodosInitial();
}

//-------------------- /Carregado/ -------------------//

class TodosLoaded extends TodosState {
  final List<TodosModel > todos;

  const TodosLoaded({required this.todos});

  @override
  List<Object> get props => [todos];
}

//-------------------- /Erro/ -------------------//

class TodosException extends TodosState {
  final String errorMessage;

  const TodosException(this.errorMessage);

  @override
  List<Object> get props => [];
}
