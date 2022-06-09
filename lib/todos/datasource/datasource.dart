import 'package:cloud_firestore/cloud_firestore.dart';

class Datasource {
  late FirebaseFirestore firestore;
  
  initiliase() {
    firestore = FirebaseFirestore.instance;
  }

  Future<List> read() async {
    var result = await firestore.collection('todos').get();
    return result.docs.map((doc) => doc.data()).toList();
  }

  Future addTodo({required String title}) async {
    await firestore.collection('todos').add({'title': title});
  }
}


//  Future addTodo({required String title}) async {
//     final todoFirebase =
//         FirebaseFirestore.instance.collection('todo').doc('id');

//     final json = {
//       'title': title,
//     };
//     await todoFirebase.set(json);
//   }
