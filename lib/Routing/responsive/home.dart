import 'package:flutter/material.dart';
import 'package:untitled7/Routing/responsive/cards.dart';

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        home: _home(),
      );
}

Widget _home() =>
    Scaffold(drawer: Text("Some thing for fun") ,
        appBar: AppBar(title: Text("Page Title:::"),),
        body: Body(),);

Widget Body() => Column(children: [Cards(),],);