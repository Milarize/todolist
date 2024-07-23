import 'dart:math';

import 'package:flutter/material.dart';

class EchoMyName extends StatefulWidget {
  const EchoMyName({Key? key}) : super(key: key);
  static const nameRoute = '/echo_my_name';
  @override
  _EchoMyNameState createState() => _EchoMyNameState();
}

class _EchoMyNameState extends State<EchoMyName> {
  String result = "ABC";
  late TextEditingController
      _controller; //late ตัวแปรมีค่

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
        title: Text("Echo My Name"),
      ),
      body: Container(
        padding: EdgeInsets.all((16.0)),
        child: Column(
          children: [
            TextField(
                controller: _controller,
                onSubmitted: (value) {
                  setState(() {
                    result = value;
                    _controller.clear();
                  });
                }),
            SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = _controller.text;
                    _controller.clear();
                  });
                },
                child: Text("Echo")),
            SizedBox(height: 16.0),
            Text(result)
          ],
        ),
      ),
    );
  }
}
