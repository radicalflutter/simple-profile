import 'package:flutter/material.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});
  static const String route = "/orangeP";

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: WidgetColorEnum.orange.color,title: Text("${WidgetColorEnum.red.title}"),
    ),
  );
}