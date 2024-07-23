import 'package:flutter/material.dart';
import 'package:todolist_week3/echo_my_name.dart';
import 'package:todolist_week3/main_page.dart';
import 'package:todolist_week3/second_page.dart';
import 'package:todolist_week3/todo_list.dart';
Widget getDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      children: [
        ListTile(
          title: Text("Welcome"),
          onTap: () {
            Navigator.pushNamed(context, MainPage.nameRoute);
          },
        ),
        ListTile(
          title: Text("About Me"),
          onTap: () {
            Navigator.pushNamed(context, SecondPage.nameRoute);
          },
        ),
        ListTile(
          title: Text("Echo My Name"),
          onTap: () {
            Navigator.pushNamed(context, EchoMyName.nameRoute);
          },
        ),
        ListTile(
          title: Text("Todo List"),
          onTap: () {
            Navigator.pushNamed(context, TodoList.nameRoute);
          },
        ),
      ],
    ),
  );
}
