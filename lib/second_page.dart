import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) => Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: ()=>_backFF(context),
              icon: Icon(
                Icons.chevron_left_outlined,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () => _backF(context),
              icon: Icon(
                Icons.chevron_left_outlined,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () =>_backFFF(context),
              icon: Icon(
                Icons.chevron_left_outlined,

              ),
            ),
          ],
        ),
      );

  void _backFF(BuildContext context){
    Navigator.pop(context , true);
  }
  void _backF(BuildContext context){
    Navigator.pop(context , false);
  }
  void _backFFF(BuildContext context){
    Navigator.pop(context);
  }
  int _ooo(int number){
    return _ooo(number++);
  }
}
