// 类型转换
void main(List<String> args) {
  // 字符转换数字
  String str = '123';
  var num1 = int.parse(str);
  var doubleNum = double.parse(str);

  print(str is String);
  print(num1 is int);
  print(doubleNum is double);

  // 空字符串转数字
  String str2 = '';
  try {
    var num2 = int.parse(str2);
    var num3 = double.parse(str2);
    print(num2);
    print(num3);
  } catch(error) {
    print('error message:');
    print(error);
  }

  // 数字转为字符串
  var num4 = 123;
  var str3 = num4.toString();

  print(str3);

  // 其他类型转换成 Boolean 类型
  // isEmpty: 判断字符串是否为空
  var str4 = '';
  print(str4.isEmpty);

  // 判断变量是否为空
  var num5;
  var num6 = 0/0;

  if (num5 == null) {
    print('空');
  } else {
    print('非空');
  }

  if (num6.isNaN) {
    print('num6 is NaN');
  }
}
