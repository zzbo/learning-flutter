// Stack, Positioned, Stack + Align
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo12')),
        body: const MyApp()
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize= MediaQuery.of(context).size;
    print('###screenSize $screenSize');

    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                width: 100, // 在 Positioned 中无法使用 double.infinity
                height: 100,
                child: Container(
                  color: Colors.blue,
                )
              ),
              Positioned(
                right: 0,
                top: 50,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                )
              )
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Container(
          width: double.infinity,
          height: 60,
          color: Colors.green,
          child: Stack(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text('AAAA', style: TextStyle(color: Colors.white)),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text('BBBB', style: TextStyle(color: Colors.white)),
              ),
              Positioned(left: 0, bottom: 0, child: Text('CCCCCCCC', style: TextStyle(color: Colors.white))),
              Positioned(right: 0, bottom: 0, child: Text('DDDDDDDD', style: TextStyle(color: Colors.white))),
            ],
          )
        )
      ],
    );
  }
}
