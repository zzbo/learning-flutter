import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo05')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          const SizedBox(width: 20),
          GestureDetector(
            child: const Icon(Icons.home, size: 40, color: Colors.black),  // flutter 自带图标
            onTap: () {
              print('home icon is clicked.');
            }
          ),
          const SizedBox(width: 20),
          const Icon(Icons.search, size: 40, color: Colors.black), // flutter 自带图标
          const SizedBox(width: 20),
          const Icon(MyIcons.storage, size: 40, color: Colors.blue), // 本地图标
          const SizedBox(width: 20),
          const Icon(MyIcons.server, size: 40, color: Colors.blue), // 本地图标
          const SizedBox(width: 20),
          const Icon(MyIcons.network, size: 40, color: Colors.blue), // 本地图标
          const SizedBox(width: 20),
          const Icon(MyIcons.apps, size: 40, color: Colors.blue), // 本地图标
        ],
      ),
    );
  }
}

class MyIcons {
  static const IconData storage = IconData(
    0xe98d,
    fontFamily: 'myIcon',
    matchTextDirection: true
  );

  static const IconData server  = IconData(
    0xe98e,
    fontFamily: 'myIcon',
    matchTextDirection: true
  );

  static const IconData network = IconData(
    0xe998,
    fontFamily: 'myIcon2',
    matchTextDirection: true
  );

  static const IconData apps  = IconData(
    0xe99b,
    fontFamily: 'myIcon2',
    matchTextDirection: true
  );
}
