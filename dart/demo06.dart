// if else
void main(List<String> args) {
  var str = '123';

  if (str is String) {
    print('str is String type');
  } else {
    print('str is other type');
  }

  var score = 80;

  if (score > 90) {
    print('优秀');
  } else if (score > 70) {
    print('良好');
  } else if (score > 60) {
    print('及格');
  } else {
    print('不及格');
  }

  // ========================================
  // 三目运算符
  var num = 6;

  var result = num > 5 ? '大于' : '小于';

  print(result);

  // ========================================
  // ?? 运算符
  var a;
  var b = a ?? 100;
  print(b);
}
