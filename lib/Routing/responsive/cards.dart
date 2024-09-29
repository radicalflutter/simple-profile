import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.red,width: 2)
        ),
        child: Row(
          children: [
            Icon(Icons.dangerous),
            Column(
              children: [Text("Ali"), Text("Hello world!!")],
            ),
            Icon(Icons.warning)
          ],
        ),
      );
}
