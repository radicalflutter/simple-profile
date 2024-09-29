import 'package:flutter/material.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});
static const String route = "/blueP";
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: WidgetColorEnum.blue.color,title: Text("${WidgetColorEnum.blue.title}"),
    ),
  );
}