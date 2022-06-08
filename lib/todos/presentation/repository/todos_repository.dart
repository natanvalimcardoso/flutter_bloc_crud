import '../../domain/model/todos_model.dart';

class TodosRepositoryFake {
  final List<TodosModel> _todos = [];

  List<TodosModel> deleteTodos(TodosModel todosModel) {
    _todos.remove(_todos.firstWhere((element) => element.title == todosModel.title));
    return _todos;
  }

  List<TodosModel> addTodos(TodosModel todosModel) {
    _todos.add(todosModel);
    return _todos;
  }

  List<TodosModel> updateTodos(TodosModel todosModel) {
    _todos.removeWhere((todo) => todo.title == todosModel.title);
    _todos.add(todosModel);
    return _todos;
  }

  showTodos() {
    return _todos;
  }
}
