// null safety 空安全

// ? 可空类型
// ! 类型断言

String? getData(param) { // String? 表示返回值可以是空值
  if (param is String) {
    return param;
  }
  return null;
}

void printLength(String? str) {
  try {
    print(str!.length); // 如果不写!, 会编辑器报错。如果写了!，那 str 有可能会是空值，运行时会报错，最好加上 try catch
  } catch(err) {
    print('str is null');
  }
}

void main(List<String> args) {
  int a = 123; // 非空的 int 类型
  print(a);

  int? b = 456; // 表示 b 是一个可空类型
  print(b);

  int c; // c 为可空类型，初始化时可以不赋值
  c = 789;
  print(c);

  // ! 类型断言
  String? str = 'this is str';
  str = null;
  // print(str.length); // 会出现告警，因为 str 有可能是空
  print(str!.length); // 类型断言：如果 str 不为 null，会打印 str 的长度，如果等于 null 会抛出异常。
}
