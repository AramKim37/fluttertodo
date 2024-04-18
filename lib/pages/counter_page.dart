import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            ElevatedButton(
              onPressed: increment,
              child: Text("Increment"),
            )
          ],
        ),
      ),
    );
  }
}
