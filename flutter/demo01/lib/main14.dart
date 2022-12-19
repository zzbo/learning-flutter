// Stack, Positioned
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo12')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            )
          ),
          Positioned(
            right: 0,
            top: 50,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            )
          )
        ],
      ),
    );
  }
}
