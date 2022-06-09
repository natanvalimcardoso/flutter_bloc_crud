import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'todos/presentation/pages/home_page.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        // '/pessoa': (context) => PessoaPage(),
      },
    );
  }
}