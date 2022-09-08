// 在Dart中，库的使用时通过import关键字引入的。
// 1ibrary 指令可以创建一个库，每个Dart文件都是一个库，即使没有使用1ibrary指令来指定

// Dart中的库主要有三种：
// 1、自定义的库
//  import lib/xxx.dart';
// 2、系统内置库
//  import "dart:math':
//  import "dart: io':
//  import "dart: convert';
// 3、Pub包管理系统中的库
// https://pub.dev/packages
// https://pub.flutter-io.cn/packages
// https://pub.dartlang.org/flutter/

// 1、需要在自己想项目根目录新建一个pubspec.yaml
// 2、在pubspec.yam1文件 然后配置名称、描述、依赖等信息
// 3、然后运行 pub get 获取包下载到本地
// 4、项目中引入库 import 'package:http/http.dart' as http；看文档使用

import 'dart:convert';

import './classA.dart';
import 'dart:math';
import 'dart:io';

requestData() async {
  // 创建 HttpClient 对象
  HttpClient httpClient = new HttpClient();
  // 创建 URI 对象
  var uri = new Uri.http('ke.qq.com', '/cgi-bin/get_cat_info');
  // 发起请求
  var request = await httpClient.getUrl(uri);
  // 关闭请求
  var response = await request.close();
  // 解码返回内容
  return await response.transform(utf8.decoder).join();
}

void main(List<String> args) async {
  A a = new A('zzbo', 18);
  a.printInfo();

  print(min(20, 3));
  print(max(5, 9));
  
  var catInfo = await requestData();
  print(catInfo);
}
