import 'package:flutter/material.dart';

import '../repository/todos_repository.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textController = TextEditingController();
  TextEditingController _textControllerEdit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_textController.text.length > 0) {
                setState(() {
                //  TodosRepositoryFake.todos.add(_textController.text);
                });
                _textController.clear();
              }
            },
            child: const Text('Adicionar'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 400,
            child: ListView.builder(
              // itemCount: TodosRepositoryFake.todos.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    // title: Text(TodosRepositoryFake.todos[index]),
                    trailing: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        // TodosRepositoryFake.todos.remove(TodosRepositoryFake.todos[index]);
                      });
                    },
                    onLongPress: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: _textControllerEdit,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  // TodosRepositoryFake.todos[index] = _textControllerEdit.text;
                                  Navigator.pop(context);
                                });
                              },
                              child: const Text('Adicionar'),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
