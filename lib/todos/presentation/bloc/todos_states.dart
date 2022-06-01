import 'package:equatable/equatable.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

//-------------------- /Carregando/ -------------------//

class TodosLoading extends TodosState {
  const TodosLoading();
}

//-------------------- /Inicial/ -------------------//

class TodosInitial extends TodosState {
  const TodosInitial();
}

//-------------------- /Carregado/ -------------------//

class TodosLoaded extends TodosState {
  final List<String> todos;

  const TodosLoaded(this.todos);

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
