// 一个类实现多个接口

abstract class A {
  String name = '';
  printA();
}

abstract class B {
  printB();
}

// 只能实现多接口，没法实现多继承
class C implements A,B {
  @override
  String name = 'ccc';

  @override
  printA() {
    print('print A');
  }

  @override
  printB() {
    print('print B');
  }
}

void main(List<String> args) {
  C c = new C();
  c.printA();
  c.printB();
}
