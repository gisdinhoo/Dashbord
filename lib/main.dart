import 'package:flutter/material.dart';
import 'package:panel/controller/controller.dart';
import 'package:panel/views/dashboard/matiere.dart';
import 'package:panel/views/mainPage.dart';
import 'package:provider/provider.dart';
//rue aminata tall

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListMatiere()),
         ChangeNotifierProvider(create: (context) => Controller()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}