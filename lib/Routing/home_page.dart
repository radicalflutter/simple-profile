import 'package:flutter/material.dart';
import 'package:untitled7/Routing/colorsPage/blue.dart';
import 'package:untitled7/Routing/colorsPage/green.dart';
import 'package:untitled7/Routing/colorsPage/orange.dart';
import 'package:untitled7/Routing/colorsPage/red.dart';
import 'package:untitled7/Routing/custom_widget.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Home Page"),
          ),
        ),
        body: _body(context),
      );
}

Widget _body(BuildContext context) => Center(
        child: Column(
      children: [
        CustomWidget(
            ontap: () {
              Navigator.pushNamed(context, RedPage.route);
            },
            value: WidgetColorEnum.red),
        CustomWidget(
            ontap: () {
              Navigator.pushNamed(context, BluePage.route);
            },
            value: WidgetColorEnum.blue),
        CustomWidget(
            ontap: () {
              Navigator.pushNamed(context, OrangePage.route);
            },
            value: WidgetColorEnum.orange),
        CustomWidget(
            ontap: () {
              Navigator.pushNamed(context, GreenPage.route);
            },
            value: WidgetColorEnum.green),
      ],
    ));
