// required关键词：
// 最开始 @required 是注解

// 现在它己经作为内置修饰符。
// 主要用于允许根据需要标记任何命名参数（函数或类），使得它们不为空。因为可选参数中必须有个 require

String getUserInfo(String username, { int age = 10, String sex = '男' }) {
  return '$username --- $age --- $sex';
}

String getUserInfo2(String username, { required int age, required String sex }) {
  return '$username --- $age --- $sex';
}

class Person {
  String name;
  int age;
  Person({required this.name, required this.age}); // 命名参数前面加上 required 表示必须传入

  printInfo() {
    print('$name --- $age');
  }
}


void main(List<String> args) {
  print(getUserInfo('aaa', age: 20));
  print(getUserInfo2('bbb', age: 23, sex: '女'));
  print('======================');

  Person p1 = new Person(age: 18, name: 'ccc');
  p1.printInfo();
  print('======================');
}
