import 'package:flutter/material.dart';

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

class MainPage extends StatelessWidget {
  static const String nameRoute = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Main Page"),
            ),
            ListTile(
              title: Text("Second Page"),
            )
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Text("Main Page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  static const String nameRoute = "/second_page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Second Page"),
        ),
      ),
    );
  }
}
