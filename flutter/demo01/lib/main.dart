import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title')),
        body: Center(
          child: Container(
            width: 300,
            height: 240,
            color: Colors.red[400],
          ),
        )
      ),
    )
  );
}
