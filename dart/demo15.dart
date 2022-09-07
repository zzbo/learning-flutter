// 函数
void main(List<String> args) {
  // 箭头函数
  List list1 = ['aa', 'bb', 'cc'];

  list1.forEach((element) => print(element));
  print('----');
  list1.forEach((element) => {
    print(element)
  });
  print('====================');

  List list2 = [1, 2, 3, 4, 5];
  var list3 = list2.map((item) => item > 3 ? item * 2 : item);
  print(list3.toList());
  print('====================');

  // 打印 1~N 内所有的偶数
  bool isEvenNumber(int num) {
    return num % 2 == 0;
  }

  void printEvenNum(int num) {
    for (int i = 0; i <= num; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }
  printEvenNum(10);
  print('====================');

  // 匿名方法
  var printNum1 = () {
    print(123);
  };

  printNum1();

  var printNum2 = (int num) {
    print(num + 2);
  };
  printNum2(6);
  print('====================');

  // 自执行方法
  ((int num) {
    print(num);
    print('我是自执行方法');
  }(5));
  print('====================');

  // 方法的递归
  int sum = 1;

  fn(int n) {
    if (n == 0) {
      print(sum);
      return;
    }

    sum *= n;
    fn(n-1);
  }
  fn(5);
  print('====================');

  // 递归的方法求 1~n 的和
  int sum2 = 0;
  
  fn2(int n) {
    if (n == 0) {
      print(sum2);
      return;
    }
    sum2 += n;
    fn2(n - 1);
  }
  fn2(100);
  print('====================');
}
