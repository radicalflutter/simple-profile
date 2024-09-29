import 'package:flutter/material.dart';
enum WidgetColorEnum{
  red("Red",Colors.red ),
  blue("Blue",Colors.blue),
  green("Green",Colors.green),
  orange("Orange",Colors.orange);
  final String title; final Color color;
  const WidgetColorEnum(this.title,this.color);
}
