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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(),
            SizedBox(height: 16.0),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = "ทดสอบ";
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
