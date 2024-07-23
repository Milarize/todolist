import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  static const String nameRoute = "/todo_list";

  TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> _todos = [for (var i = 0; i < 100; i++) 'Todo $i'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: TextField(),
                    )),
                Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add"),
                    ))
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_todos[index]),
                  );
                },
                itemCount: _todos.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
