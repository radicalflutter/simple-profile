import 'package:flutter/material.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});
  static const String route = "/redP";

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: WidgetColorEnum.red.color,title: Text("${WidgetColorEnum.red.title}"),
        ),
      );
}
