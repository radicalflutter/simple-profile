import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: home(),
      );
}

Widget home() => Scaffold(
      appBar: _appBar(),
      body: _body(),
    );

AppBar _appBar() => AppBar(
      title: Text("wellcome to caffe ::: "),
    );

Widget _body() => Column( crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 3,child: Image.asset("")),
        Text(
          "Fall in Love With Coffe With Blissful Delight!",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        Text(
          "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
          style: TextStyle(fontWeight: FontWeight.w200),
        ),
        ElevatedButton(
            onPressed: () => print("clicked start button"),
            child: Text(
              "Get Start",
              style: TextStyle(color: Colors.white, fontSize: 60),
            ))
      ],
    );
