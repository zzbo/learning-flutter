// GridView 网格列表
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo09')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 把 GridView 放到 Column 中，要加入 Expanded
    // https://stackoverflow.com/questions/49943272/flutter-gridview-in-column-whats-solution
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 4, // 一行的 Widget 数量
            padding: const EdgeInsets.all(10),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.7,
            physics: const NeverScrollableScrollPhysics(), // 禁止用户滚动
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('01')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('02')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('03')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('04')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('05')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('06')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('07')
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.blue),
                alignment: Alignment.center,
                child: const Text('08')
              ),
            ]
          )
        ),
        Expanded(
          child: GridView.extent(
            maxCrossAxisExtent: 180, // 横轴子元素的最大长度
            children: const [
              Icon(Icons.bike_scooter, color: Colors.red),
              Icon(Icons.safety_check, color: Colors.red),
              Icon(Icons.face, color: Colors.red),
              Icon(Icons.tab, color: Colors.red),
              Icon(Icons.table_chart, color: Colors.red),
              Icon(Icons.join_full, color: Colors.red),
              Icon(Icons.nat, color: Colors.red),
              Icon(Icons.textsms, color: Colors.red),
              Icon(Icons.radar, color: Colors.red),
              Icon(Icons.policy, color: Colors.red),
            ]
          )
        )
      ],
    );
  }
}
