import '../../domain/model/todos_model.dart';

class TodosRepositoryFake {
  final List<TodosModel> _todosList = [];

  List<TodosModel> deleteTodos(TodosModel todosModel) {
    _todosList.remove(_todosList.firstWhere((element) => element.title == todosModel.title));
    return _todosList;
  }

  List<TodosModel> addTodos(TodosModel todosModel) {
    _todosList.add(todosModel);
    return _todosList;
  }

  List<TodosModel> updateTodos(TodosModel todosModel, String title) {
    int index = _todosList.indexOf(todosModel);
    _todosList[index].title = title;
    return _todosList;
  }

  showTodos() {
    return _todosList;
  }
}
