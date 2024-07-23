import 'package:flutter/material.dart';
import 'package:todolist_week3/main_page.dart';
import 'package:todolist_week3/second_page.dart';


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
        SecondPage.nameRoute: (context) => SecondPage()
      },
    );
  }
}
