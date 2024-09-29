import 'package:flutter/material.dart';
import 'package:untitled7/Routing/colorsPage/blue.dart';
import 'package:untitled7/Routing/colorsPage/green.dart';
import 'package:untitled7/Routing/colorsPage/orange.dart';
import 'package:untitled7/Routing/colorsPage/red.dart';
import 'package:untitled7/Routing/home_page.dart';

void main(){
  runApp(app());

}
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) =>MaterialApp(
    initialRoute: "/",
    routes:{
      RedPage.route: (_)=> RedPage(),
      BluePage.route: (_)=> BluePage(),
      GreenPage.route: (_) => GreenPage(),
      OrangePage.route: (_) => OrangePage(),
    } ,

    home: HomePage(),
  );
}

