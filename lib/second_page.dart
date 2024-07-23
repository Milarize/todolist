import 'package:flutter/material.dart';
import 'package:todolist_week3/main_drawer.dart';

class SecondPage extends StatelessWidget {
  static const String nameRoute = "/second_page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      drawer: getDrawer(context),
      body: Container(
        child: Center(
          child: Text("Second Page"),
        ),
      ),
    );
  }
}
