import 'package:flutter/material.dart';

class EchoMyName extends StatefulWidget {
  const EchoMyName({Key? key}) : super(key: key);
  static const nameRoute = '/echo_my_name';
  @override
  _EchoMyNameState createState() => _EchoMyNameState();
}

class _EchoMyNameState extends State<EchoMyName> {
  String result = " = waiting for you =";
  late TextEditingController _controller; //late ตัวแปรจะมีค่า

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
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
                  TextField(
                    controller: _controller,
                    onSubmitted: (value) {
                      setState(() {
                        result = value;
                        _controller.clear();
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Please write something...",
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = _controller.text;
                        _controller.clear();
                      });
                    },
                    child: Text("Echo"),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    result,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
