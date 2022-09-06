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
}
