// 静态成员，操作符，类的继承

class Person {
  // 静态成员方法不能访问非静态成员，非静态方法可以访问静态成员
  static String name = 'aaa';
  int age = 20;

  static void show() {
    print(name);
  }

  void printInfo() { // 非静态方法可以访问 静态成员 和 非静态成员
    print('$name --- ${this.age}');
  }

  static void printInfo2() { // 静态方法 只能访问 静态成员 和 静态方法
    print(name); // 访问静态属性
    show(); // 访问静态方法
    // print(age); // 在静态方法中无法访问非静态属性
    // this.printInfo(); // 在静态方法中无法访问非静态方法
  }
}

// 对象操作符
// ? 条件运算符
// as 类型转换
// is 类型判断
// .. 级联操作（连缀）
class Animal {
  String name = '';
  int age = 0;
  Animal(this.name, this.age);

  printInfo() {
    print('${this.name} --- ${this.age}');
  }
}

void main(List<String> args) {
  print(Person.name);
  Person.show();
  print('==================');

  var p1 = new Person();
  p1.printInfo();
  print('==================');

  print('访问静态方法：');
  Person.printInfo2();
  print('==================');

  Animal animal1 = new Animal('bbc', 5);
  animal1?.printInfo();
  print(animal1.printInfo()?.a);
  print('==================');

  Animal animal2 = new Animal('ab', 1);
  if (animal2 is Animal) {
    print('animal2 is instance of Animal.');
  }
  if (animal2 is Object) {
    print('animal2 is instance of Object.');
  }
  print('==================');

  Animal animal3 = new Animal('cc', 2);
  animal3..name = 'dd'..age = 5..printInfo(); // 连缀操作
}
