import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      // color: Theme.of(context).primaryColor,
      color: Colors.grey[100],
      child: Text(
        text,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
