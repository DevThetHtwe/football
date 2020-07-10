import 'package:flutter/material.dart';

jumper(BuildContext context, Widget mywidget) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => mywidget),
  );
}
