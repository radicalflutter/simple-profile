import 'package:flutter/material.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class GreenPage extends StatelessWidget {
  const GreenPage({super.key});
  static const String route = "/greenP";

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: WidgetColorEnum.green.color,title: Text("${WidgetColorEnum.red.title}"),
    ),
  );
}