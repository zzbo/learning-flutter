// Flex, Expanded
// Row, Column 是继承于 Flex
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

  // 宽度按 1:3 比例划分
  Widget render1() {
    return Row(
      children: const [
        Expanded(
          flex: 1,
          child: MyIcon(icon: Icons.home, color: Colors.red)
        ),
        Expanded(
          flex: 3,
          child: MyIcon(icon: Icons.menu, color: Colors.blue)
        )
      ],
    );
  }

  // 左边宽度自适应，右边固定宽度
  Widget render2() {
    return Row(
      children: const [
        Expanded(
          flex: 1,
          child: MyIcon(icon: Icons.input, color: Colors.grey),
        ),
        MyIcon(icon: Icons.search, color: Colors.green),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        render1(),
        const Padding(padding: EdgeInsets.only(top: 10)),
        render2(),
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

