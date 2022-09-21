import 'package:flutter/material.dart';

void main() {
  Center centerDemo = const Center(
    child: Text(
      "flutter demo01", 
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

  MaterialApp materialAppDemo = MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Hello world')),
      body: centerDemo,
    )
  );

  runApp(materialAppDemo);
}
