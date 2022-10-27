// 动态列表以及循环动态
import 'package:flutter/material.dart';

List listData = [
  {
    "title": 'title1',
    "author": 'author1',
    "content": 'sadfdslfjlj1'
  },
  {
    "title": 'title2',
    "author": 'author2',
    "content": 'sadfdslfjlj2'
  },
  {
    "title": 'title3',
    "author": 'author3',
    "content": 'sadfdslfjlj3'
  },
  {
    "title": 'title4',
    "author": 'author4',
    "content": 'sadfdslfjlj4'
  },
  {
    "title": 'title5',
    "author": 'author5',
    "content": 'sadfdslfjlj5'
  },
  {
    "title": 'title6',
    "author": 'author6',
    "content": 'sadfdslfjlj6'
  },
  {
    "title": 'title7',
    "author": 'author7',
    "content": 'sadfdslfjlj7'
  },
  {
    "title": 'title8',
    "author": 'author8',
    "content": 'sadfdslfjlj8'
  }
];

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo08')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> initList() {
    List<Widget> list = [];

    for (var i = 0; i < 40; i++) {
      list.add(ListTile(
        title: Text('item: ${i + 1}')
      ));
    }

    return list;
  }

  List<Widget> renderListData() {
    List<Widget> tempList = listData.map((item) {
      return ListTile(
        title: Text(item['title']),
        subtitle: Text(item['author']),
      );
    }).toList();

    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    print(listData);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          ...renderListData(),
          ...initList()
        ]
      )
    );
  }
}
