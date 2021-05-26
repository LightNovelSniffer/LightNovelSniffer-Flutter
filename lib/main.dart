import 'package:flutter/material.dart';
import 'dyanmicLNList.dart';
import 'constantes.dart';

void main() => runApp(LightNovelSnifferApp());

class LightNovelSnifferApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.friendlyAppName,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: new DyanmicLNList(),
    );
  }
}

