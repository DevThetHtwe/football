import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/login.dart';

void main() => runApp(MyFoot());

class MyFoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.white38),
    );
    return MaterialApp(
      title: 'My Foot',
      home: LogIn(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
