import 'package:flutter/material.dart';
import 'package:todolist_week3/main_drawer.dart';

class MainPage extends StatelessWidget {
  static const String nameRoute = "/main_page";
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my projects"),
      ),
      drawer: getDrawer(context),
      body: Container(
        color: Colors.pink[50],
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "🎉 ยินดีต้อนรับสู่ Week 3 🎉",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "เมนูทั้งหมด 3 รายการ ประกอบด้วย",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "1. เกี่ยวกับฉัน 📖",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "2. Echo input 🔊",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "3. Todolist 📝",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
