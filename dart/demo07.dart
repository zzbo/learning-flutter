// 运算符
void main(List<String> args) {
  int a = 1;
  int b = 2;
  int c = 3;
  var d = 4;
  d+=6;

  print(a + b + c);
  print(a / b);
  print(a / c);
  print(a > b);
  print(b > a);
  print(d);

  // =======================
  bool flag = true;

  print(!flag); // 取反

  // =======================
  bool a2 = true;
  bool b2 = false;

  print(a2 && b2);
  print(a2 || b2);

  // =======================
  var person = {
    'name': '张三',
    'age': 20,
    'sex': 'women'
  };

  if (person['age'] == 20 && person['sex'] == 'women') {
    print(person);
  } else {
    print('不匹配条件');
  }

  // ======================
  int num1 = 10;
  var num2;

  num1 ??= 20;
  num2??=30; // 
  print(num1);
  print(num2);

  // =====================
  var aa = 10;
  aa++;
  print(aa);

  var a1 = 1;
  var bb = a1++; // 先赋值后运算
  var cc = ++a1; // 先运算再赋值
  print(bb);
  print(cc);
}
