import 'package:flutter/material.dart';
import 'package:todolist_week3/echo_my_name.dart';
import 'package:todolist_week3/main_page.dart';
import 'package:todolist_week3/second_page.dart';
import 'package:todolist_week3/todo_list.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainPage.nameRoute,
      routes: {
        MainPage.nameRoute: (context) => MainPage(),
        SecondPage.nameRoute: (context) => SecondPage(),
        EchoMyName.nameRoute: (context) => EchoMyName(),
        TodoList.nameRoute: (context) => TodoList(),
      },
    );
  }
}




