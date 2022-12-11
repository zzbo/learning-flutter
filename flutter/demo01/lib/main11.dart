// Padding, Row, Column
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo11')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container( // 使用 Container + Padding 属性来实现边距时，边距包含背景颜色，实际上是 padding 撑开 Container 容器。
          padding: const EdgeInsets.all(20),
          color: Colors.red,
          child: const Text(
            '你好 Flutter', 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            )
          ),
        ),
        Padding( // 使用 Padding 来实现边距时，边距不包含背景颜色。
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue,
            child: const Text('AAAA'),
          ),
        )
      ],
    );
  }
}
