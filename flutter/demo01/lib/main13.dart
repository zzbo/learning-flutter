// ListView 实现布局
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('This is Title demo13')),
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
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.blue,
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 500,
                child: Image.network('http://inews.gtimg.com/newsapp_ls/0/15559203632_870492/0', fit: BoxFit.cover),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 500,
                child: Column(
                  children: [ 
                    Expanded(
                      flex: 1,
                      child: Image.network('https://inews.gtimg.com/newsapp_bt/0/15558584275/1000', fit: BoxFit.cover)
                    ),
                    const SizedBox(height: 5),
                    Expanded(
                      flex: 1,
                      child: Image.network('https://inews.gtimg.com/newsapp_bt/0/15558584345/1000', fit: BoxFit.cover)
                    )
                  ],
                ),
              )
            )
          ],
        )
      ],
    );
  }
}
