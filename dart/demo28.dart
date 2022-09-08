// pub包管理系统
// 1、从下面网址找到要用的库
// https://pub.dev/packages
// https://pub.flutter-io.cn/packages
// https://pub.dartlang.org/flutter/

// 2、创建一个pubspec.yam1文件，内容如下
// name: XXX
// description: A new flutter module project.
// dependencies:
// http: ^0.12.0+2
// date format:
// ^1.0.6

// 3、配置dependencies
// 4、运行put get 获取远程库
// 5、看文档引入库使用
// 包重命名 import 'lib/person' as libPerson; 然后可以使用 libPerson.Person p1 = new libPerson.Person(); 来实例化
// 也可以使用 dart pub add 命令添加指定名

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'demo17.dart';

void main(List<String> args) async {
  var uri = new Uri.http('ke.qq.com', '/cgi-bin/get_cat_info');
  var response = await http.get(uri);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
  } else {
    print(response.statusCode);
  }
}
