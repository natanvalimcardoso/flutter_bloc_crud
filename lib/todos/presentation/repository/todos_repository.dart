import '../../domain/model/todos_model.dart';

class TodosRepositoryFake {
  List<TodosModel> _todos = [];

  List<TodosModel> deleteTodos(TodosModel todosModel) {
    _todos.remove(todosModel.title);
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

  List<TodosModel> showTodos(TodosModel todosModel) {
    return _todos;
  }
}
