// 垂直滚动
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo06')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          title: Text('首页'),
          leading: Icon(Icons.home),
        ),
        const Divider(),
        const ListTile(
          title: Text('应用列表'),
          leading: Icon(Icons.apps)
        ),
        const Divider(),
        const ListTile(
          title: Text('在线客服'),
          leading: Icon(Icons.phone),
          trailing: Icon(Icons.arrow_right_sharp),
        ),
        const Divider(),
        ListTile(
          title: const Text('【新机】小米影像大脑，Note12搭载2亿CMOS丨Apple Music涨价，国区还没变'),
          subtitle: const Text('作为1500元档位机型，红米Note12系列这次前期预热强调影像能力，这的确算是新鲜事，官方表示，这次Note12系列搭载小米影像大脑，有更好的算法，大杯搭载IMX766+OIS，超大杯首发2亿像素传感器HPX，硬件上来看的确很猛。'),
          leading: Image.network('http://inews.gtimg.com/newsapp_ls/0/15377201156_294195/0'),
          // trailing: Image.network(''), // 尾部加图片
        ),
        const Divider(),
        Container(
          width: 100, // 垂直滚动列表，子元素设置宽度无效
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Colors.lightGreen
          )
        ),
      ]
    );
  }
}
