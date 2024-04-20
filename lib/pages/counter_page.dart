import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todoapp/test.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int counter = 0;

//method
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      if (counter < 1) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // title: Text("The number can't be negative"),
              content: Text("The number can't go below zero"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      } else {
        counter--;
      }
    });
  }

  void reset() {
    setState(() {
      counter = 0;
    });
  }

//UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "you pushed the button this many times",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment,
                  child: Text("Increment"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50), // 버튼 크기 설정
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: decrement,
                  child: Text("Decrement"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50), // 버튼 크기 설정
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: reset,
                  child: Text("Reset"),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50), // 버튼 크기 설정
                  ),
                ),
              ],
            ),
            Test(),
          ],
        ),
      ),
    );
  }
}
