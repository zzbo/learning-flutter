// Wrap 流式布局 组件
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo17')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        spacing: 8, // 水平间距
        runSpacing: 4, // 垂直间距
        children: [
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
          MyButton('测试', onPressed: () {
            print('测试点击事件');
          }),
        ],
      )
    );
  }
}

class MyButton extends StatelessWidget {
  String text;
  void Function()? onPressed;
  MyButton(this.text, {Key? key, this.onPressed}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 210, 210, 210)
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.black
        )
      ),
      onPressed: onPressed,
      child: Text(text)
    );
  }
}
