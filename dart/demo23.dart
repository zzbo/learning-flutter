// mixin
// dart 只能实现多接口，没法实现多继承
// mixins 的中文意思是混入，就是在类中混入其他功能
// 在 Dart 中可以使用minxins实现类似多继承的功能
// 因为 mixins 使用的签的，随着 Dart 版本的更新，这里是Dart2.x使用的mixins条件：
// 1、作为 mixins 的类只能继承自 Object，不能继承其他类
// 2、作为 minxins 的类不能自构造函数
// 3、一个类可以 mixins 多个mixins类
// 4、mixins 绝不是继承，也不是接口，而是一种全新的特性

class Person {
  String name = 'personName';
  Person(this.name);
}

class A {
  String str = 'this is A';
  void printA() {
    print('A');
  }
}

class B {
  String str = 'this is B';
  void printB() {
    print('B');
  }
}

class C { // C 类有构造函数，不能用于 mixins
  C() {}
}
class D extends A {} // D 类是继承 A 类，所以 D 类不能用于 mixins

class Z extends Person with A, B {
  Z(super.name);
}

void main(List<String> args) {
  Z z = new Z('tester');

  print(z.name);
  print(z.str); // 后面把前面的覆盖掉了
  z.printA();
  z.printB();

  print(z is A);
  print(z is B);
  print(z is C);
  print(z is Person);
  print(z is Object);
}
