// ElevatedButton, TextButton, OutlinedButton, IconButton 组件
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Demo16')),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                print(11111);
              },
              child: const Text('普通按钮')
            ),
            ElevatedButton.icon(
              onPressed: () {
                print(111112);
              },
              icon: const Icon(Icons.home),
              label: const Text('普通按钮')
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black)
              ),
              onPressed: () {
                print(111113);
              },
              icon: const Icon(Icons.home),
              label: const Text('普通按钮')
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                print(22222);
              },
              child: const Text('文本按钮')
            ),
            TextButton.icon(
              onPressed: () {
                print(222223);
              },
              icon: const Icon(Icons.home),
              label: const Text('文本按钮')
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
              onPressed: () {
                print(3333333);
              },
              child: const Text('带边框按钮')
            ),
            OutlinedButton.icon(
              onPressed: () {
                print(33333334);
              },
              icon: const Icon(Icons.send),
              label: const Text('带边框按钮')
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                print(444444);
              },
              icon: const Icon(Icons.thumb_up, color: Colors.orange,)
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 50,
              width: 180,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                onPressed: () {
                  print(55555);
                },
                child: const Text('大按钮', style: TextStyle(fontSize: 20),)
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )
                )
              ),
              onPressed: () {}, 
              child: const Text('测试圆角按钮')
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 40,
                margin: const EdgeInsets.only(left: 20, right: 20),
                // 宽度自适应
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)
                  ),
                  onPressed: () {},
                  child: const Text('登录')
                )
              )
            )
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 修改按钮边框颜色
            OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  const BorderSide(width: 1, color: Colors.red)
                )
              ),
              onPressed: () {}, 
              child: const Text('测试按钮')
            )
          ],
        )
      ],
    );
  }
}
