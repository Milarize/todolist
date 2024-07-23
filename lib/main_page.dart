import 'package:flutter/material.dart';
import 'package:todolist_week3/main_drawer.dart';

class MainPage extends StatelessWidget {
  static const String nameRoute = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      drawer: getDrawer(context),
      body: Container(
        child: Center(
          child: Text("Main Page"),
        ),
      ),
    );
  }
}

