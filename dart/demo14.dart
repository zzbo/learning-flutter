//  函数

func1() {
  print('this is func1');
}
void main(List<String> args) {
  print('系统内置方法');
  func1();

  int getNum() {
    int num1 = 123;
    return num1;
  }

  int theNum = getNum();
  print(theNum);

  String getString() {
    return 'abcd';
  }
  print(getString());

  List getList() {
    return ['aa', 'bb', 'cc'];
  }
  print(getList());
  print('=========================');

  // 函数内部定义函数
  void xxx() {
    aaa() {
      print('aaa func');
    }
    aaa();
  }
  xxx();
  print('=========================');

  // 定义一个方法，求1到这个数的所有的数的和 
  int sumNum(int toNum) {
    int sum = 0;
    for (int i = 1; i <= toNum; i++) {
      sum+=i;
    }
    return sum;
  }

  print(sumNum(100));
  print('=========================');

  // 定义一个带可选参数的方法
  String printUserInfo(String userName, [var age]) {
    if (age != null) {
      return '$userName &&& $age';
    } else {
      return '$userName &&& 年龄保密';
    }
  }
  print(printUserInfo('zzbo'));
  print('=========================');

  // 定义一个带默认参数的方法
  String printUserInfo2(String userName, [var age, String sex = '男']) {
    if (age is int) {
      return '$userName | $sex | $age';
    } else {
      return '$userName | $sex | 年龄保密';
    }
  }
  print(printUserInfo2('zzbo', 18));
  print('=========================');

  // 定义一个命名参数的方法
  String printUserInfo3(String userName, { int age: 18, String sex =  '男' }) {
    print('printUserInfo3::');
    if (age is int) {
      return '$userName | $sex | $age';
    } else {
      return '$userName | $sex | 年龄保密';
    } 
  }
  print(printUserInfo3('aaa', sex: '女', age: 2));
  print('=========================');

  // 把函数作为参数
  fn1() {
    print('fn1');
  }

  fn2(fn) {
    fn();
  }

  fn2(fn1);
  print('=========================');
  
}
