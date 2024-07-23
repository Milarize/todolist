import 'package:flutter/material.dart';
import 'package:todolist_week3/main_drawer.dart';

class SecondPage extends StatelessWidget {
  static const String nameRoute = "/second_page";
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About me"),
      ),
      drawer: getDrawer(context),
      body: Container(
        color: Colors.yellow[50], 
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            color: Colors.yellow[100], 
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                      'https://media.discordapp.net/attachments/1185600798579773551/1265312601701613649/351366b5-739e-4fa6-b5c0-d80689cd8269.jpg?ex=66a10db0&is=669fbc30&hm=4cd0cd663a0d315330e106bc6ab6ffed7c8753aa7cf8200b73d0cd81f66e0939&=&format=webp&width=539&height=361', 
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    "ฉันชื่อกุลิสรา ทองงามขำ",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    "ชื่อเล่น มิ้นท์",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "เมนูอาหารโปรด ติ่มซำ",
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

