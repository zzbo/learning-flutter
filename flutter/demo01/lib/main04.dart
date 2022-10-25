import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo04')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyApp(),
            SizedBox(height: 20),
            Circular(),
            SizedBox(height: 20),
            ClipImage(),
            SizedBox(height: 20),
            LocalImage(),
          ]
        )
      ),
    )
  );
}

// 自定义 Container
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration( // BoxDecoration 可以装饰 Container
          color: Colors.lightGreen,
          border: Border.all( // 边框
            color: Colors.blue,
            width: 4
          ),
          
        ),
        child: Image.network(
          'https://mbdp01.bdstatic.com/static/landing-pc/img/logo_top.79fdb8c2.png',
          scale: 2, // 缩小
          // alignment: Alignment.centerLeft, // 图片对齐
          fit: BoxFit.contain
        )
      )
    );
  }
}

// 使用 Circular 实现一个圆形图片
class Circular extends StatelessWidget {
  const Circular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100),
        image: const DecorationImage(
          image: NetworkImage('https://mbdp01.bdstatic.com/static/landing-pc/img/logo_top.79fdb8c2.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

// 使用 ClipOval，实现一个圆形图片，ClipOval 只能裁剪图片，而且不能设置背景颜色
class ClipImage extends StatelessWidget {
  const ClipImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
          'https://mbdp01.bdstatic.com/static/landing-pc/img/logo_top.79fdb8c2.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover
      ),
    );
  }
}

// 加载本地图片，要先在 pubspec.yaml 配置 assets 字段
class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // 绑定事件有3种: InkWell, GestureDetector, RaisedButton
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(color: Colors.purple),
        child: Image.asset('images/test_icon.png'),
      ),
      onTap: () {
        print('onTap,onTap,onTap123');
      }
    );
  }
}


