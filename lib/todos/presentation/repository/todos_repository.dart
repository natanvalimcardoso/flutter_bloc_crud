import '../../domain/model/todos_model.dart';

class TodosRepositoryFake {
  List<String> todos = [];

  List<String> _deleteTodos(TodosModel todosModel) {
    todos.remove(todosModel.title);
    return todos;
  }

  List<String> _addTodos(TodosModel todosModel) {
    todos.add(todosModel.title);
    return todos;
  }

  List<String> _updateTodos(TodosModel todosModel) {
    todos[todos.indexOf(todosModel.title)] = todosModel.title;
    return todos;
  }
}
