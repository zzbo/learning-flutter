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
            color: Colors.orange,
            child: const Text('AAAABBBB'),
          ),
        ),
        const MyIcon(icon: Icons.home, color: Colors.blue),
        const MyIcon(icon: Icons.search, color: Colors.pink),
        const MyIcon(icon: Icons.adb_sharp, color: Colors.lightGreen),
        const MyIcon(icon: Icons.account_box_sharp, color: Colors.indigo),
      ],
    );
  }
}

class MyIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  const MyIcon({Key? key, this.icon = Icons.abc, this.color = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 60,
      height: 60,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
