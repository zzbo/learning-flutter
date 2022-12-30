// StatefulWidget
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text('$num', style: Theme.of(context).textTheme.headline2),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                  num++;
                });
              }, child: const Text('增加')),
              const SizedBox(width: 20),
              ElevatedButton(onPressed: () {
                setState(() {
                  if (num >= 1) {
                    num--;
                  }
                });
              }, child: const Text('减少'))
            ],
          )
        ],
      )
    );
  }
}