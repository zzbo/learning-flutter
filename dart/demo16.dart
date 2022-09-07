// 类
import './classA.dart';

class Person {
  String name = 'unnamed';
  int age = 0;

  Person({ String name = '', int age = 0}) {
    print('Person constructor...');
    this.name = name != '' ? name : this.name;
    this.age = age != 0 ? age : this.age;
  }

  void printInfo() {
    print('class Person printInfo method.');
    print('$name --- $age');
    print('${this.name} === ${this.age}');
  }

  void setInfo({ name = '', age = 0}) {
    print('class Person setInfo method.');

    this.name = name != '' ? name : this.name;
    this.age = age != 0 ? age : this.age;
  }
}

class Animal {
  String name = 'unnamed';
  int age = 0;

  // 简写赋值，构造函数把收到的参数赋值给类成员变量
  Animal(this.name, this.age);
  
  printInfo() {
    print('class Animal printInfo method.');
    print('${this.name} ---- ${this.age}');
  }
}

class Obj {
  String name = '';
  Obj.init(String name) {
    // 命名构造函数
    this.name = name;
  }
}

class Rect {
  num width = 0;
  num height = 0;

  Rect(this.width, this.height);

  area() {
    return this.width * this.height;
  }

  // getter
  get area2 {
    print('using getter:');
    return this.area();
  }

  // setter
  set areaHeight(value) {
    this.height = value;
  }
}

class EE {
  var width;
  var height;

  EE(): width = 2, height = 3 {
    print('构建函数中默认赋值，会在类实例化之前赋值');
    print('width: ${width}');
  }
}

void main(List<String> args) {
  // 打印变量
  Person p1 = new Person();
  print(p1.name);
  p1.printInfo();
  print('============================');

  // 通过 setInfo 赋值
  Person p2 = new Person();
  p2.setInfo(name: 'zzbo', age: 18);
  p2.printInfo();
  print('============================');

  // 初始化赋值
  Person p3 = new Person(name: 'bb', age: 20);
  p3.printInfo();
  print('============================');

  // 构造函数入参简写
  Animal animal1 = new Animal('aaa', 3);
  animal1.printInfo();
  print('============================');

  // 命名构建函数
  Obj obj1 = new Obj.init('bbb');
  print(obj1.name);
  print('============================');

  // 命名构建函数
  A a1 = new A('test', 10);
  // print(a1._age); // 无法读取私有变量
  a1.printInfo();
  print('============================');

  Rect rect = new Rect(10, 5);
  print('面积为：${rect.area()}');
  print('面积2为：${rect.area2}');
  rect.areaHeight = 2;
  print('面32为：${rect.area2}');
  print('============================');

  // 构造函数中赋默认值
  EE ee = new EE();
  print('height: ${ee.height}');
}
