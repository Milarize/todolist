import 'dart:math';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  static const String nameRoute = "/todo_list";

  TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<Map<String, String>> _todos = [
    for (var i = 0; i < 2; i++) {'text': 'Todo $i', 'emoji': ''}
  ];
  late TextEditingController _controller;
  final List<String> _emojis = ["😀", "🎉", "🚀", "🍕", "🌟", "❤️", "🐱", "🎈"];

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _initializeEmojis();
  }

  void _initializeEmojis() {
    final random = Random();
    for (var todo in _todos) {
      todo['emoji'] = _emojis[random.nextInt(_emojis.length)];
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _addTodo() {
    final random = Random();
    setState(() {
      _todos.insert(0, {
        'text': _controller.text,
        'emoji': _emojis[random.nextInt(_emojis.length)]
      });
    });
    _controller.clear();
  }

  _delTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo List"),
      ),
      body: Container(
        color: Colors.yellow[50], 
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: TextField(
                      controller: _controller,
                      onSubmitted: (value) {
                        _addTodo();
                      },
                      decoration: InputDecoration(
                        labelText: "Please write something  ...",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      _addTodo();
                    },
                    child: Text("Add"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // แบ่ง 2 คอลัม
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2.0,
                        child: ListTile(
                          title: Text('${_todos[index]['emoji']} ${_todos[index]['text']}'),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              _delTodo(index);
                            },
                          ),
                        ),
                      );
                    },
                    itemCount: _todos.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
