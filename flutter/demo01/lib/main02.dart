import 'package:flutter/material.dart';

void main() {
  MaterialApp materialAppDemo = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Hello world')),
      body: const MyApp(),
    )
  );

  runApp(materialAppDemo);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
    child: Text(
        "flutter demo02", 
        textDirection: TextDirection.rtl, 
        style: TextStyle(
          // color: Colors.blue
          color: Color.fromRGBO(200, 100, 123, 1),
          fontSize: 40,
          fontWeight: FontWeight.bold
        ),
        textAlign: TextAlign.left,
      )
    );
  }
}
