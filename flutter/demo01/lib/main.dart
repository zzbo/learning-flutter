import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyContainer(), 
            MyButton(),
          ]
        )
      ),
    )
  );
}

// 自定义 Container
class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.centerLeft, // 配置 Container 容器内元素的方位
        padding: const EdgeInsets.all(10), // Container 容器的内边距，类似于 css 的 padding
        width: 200,
        height: 160,
        decoration: BoxDecoration( // BoxDecoration 可以装饰 Container
          color: Colors.redAccent,
          border: Border.all( // 边框
            color: Colors.blue,
            width: 4
          ),
          borderRadius: BorderRadius.circular(10), // 圆角
          boxShadow: const [BoxShadow( // 阴影效果
            color: Colors.blue,
            blurRadius: 10.0
          )],
          gradient: const LinearGradient( // 线性渐变
            colors: [Colors.orange, Colors.green]
          )
        ),
        child: const Text(
          'hahaha', 
          style: TextStyle(
            color: Colors.white
          )
        )
      )
    );
  }
}

// 自定义按钮
class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text(
        '按钮文字',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16
        )
      ),
    );
  }
}
