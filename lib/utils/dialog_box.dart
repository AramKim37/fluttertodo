import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.grey[300],
        content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add your task",
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //save button
                  MyButton(
                    text: "Save",
                    onPressed: onSave,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  // cancel button
                  MyButton(
                    text: "Cancel",
                    onPressed: onCancel,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
