import 'package:flutter/material.dart';
import 'package:untitled7/Routing/widget_color_enum.dart';

class CustomWidget extends StatefulWidget {
   const CustomWidget({super.key, required this.ontap, required this.value});

  final void Function() ontap;

  final WidgetColorEnum value;

  @override
  State<CustomWidget> createState() => _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {

  Color? _color;

  @override
  void initState() {
    _color = widget.value.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) =>
      InkWell(onHover: (isHover) {

          setState(() {
            if(isHover) {
              _color = _color!.withOpacity(0.8);
            } else{
              _color = widget.value.color;
            }
          });

      },
        onTap: widget.ontap,
        child: ColoredBox(color:_color!, child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text("${widget.value.title}"),
        ),),
      );
}
