import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textController = TextEditingController();
  TextEditingController _textControllerEdit = TextEditingController();

  List<String> pessoaTodo = [];
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
                  pessoaTodo.add(_textController.text);
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
              itemCount: pessoaTodo.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(pessoaTodo[index]),
                    trailing: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        pessoaTodo.remove(pessoaTodo[index]);
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
//*fazer update
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
