// 水平滚动
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo07')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      children: [
        Container( // 横向滚动不能使用 ListTile 作为子组件
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.yellow
          ),
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Image.network(
                  'http://inews.gtimg.com/newsapp_ls/0/15377201156_294195/0',
                  fit: BoxFit.cover
                )
              ),
              const Text('测试，测试，')
            ],
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.orange
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.pink
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.red
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.cyan
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.blueAccent
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.yellow
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.orange
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.pink
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.red
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.cyan
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.blueAccent
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.yellow
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.orange
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.pink
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.red
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.cyan
          ),
        ),
        Container(
          width: 120,
          height: 120, // 高度自适应，设置了 height 不会生效
          decoration: const BoxDecoration(
            color: Colors.blueAccent
          ),
        ),
      ]
      ),
      
    );
  }
}
