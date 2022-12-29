// AspectRatio, Card, CircleAvatar 组件
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo15')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 需求：页面上显示一个容器，宽度是屏幕的宽度，高度是容器宽度的一半
        AspectRatio(
          aspectRatio: 2/1,
          child: Container(
            color: Colors.lightBlue[200]
          )
        ),
        Expanded(
          child: ListView(
            children: [
              Card(
                margin: const EdgeInsets.only(top: 15, right: 15, bottom: 0, left: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                child: Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('http://p3.music.126.net/93xvnxBVYgMKTVwn1xOv-A==/109951166495019848.jpg?param=200y200')
                      ),
                      title: Text('UserName111'),
                      subtitle: Text('Sub Title 111.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('电话：12345678901')
                    ),
                    ListTile(
                      title: Text('地址：广东省')
                    )
                  ],
                )
              ),
              Card(
                margin: const EdgeInsets.only(top: 15, right: 15, bottom: 0, left: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 3,
                child: Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('http://p2.music.126.net/qsmIgpWxcsmTDdUa1KqOHQ==/109951165506353125.jpg?param=50y50')
                      ),
                      title: Text('UserName22222'),
                      subtitle: Text('Sub Title 222222.'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('电话：12345678902')
                    ),
                    ListTile(
                      title: Text('地址：广东省')
                    )
                  ],
                )
              )
            ],
          ),
        )
      ]
    );
  }
}
