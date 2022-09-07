// 抽象类:
// Dart 抽象类主要用于定义类，子类可以继承抽象类，也可以实现抽象类接口。
// 1、抽象类通过 abstract 关键字来定义
// 2、Dart中的抽象方法不能用 abstract 声明，Dart中没有方法体的方法我们称为抽象方法。
// 3、如果子类继承抽象类必须得实现里面的抽象方法
// 4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。
// 5、抽象类不能被实例，只有继承它的子类可以。

// extends抽象类 和implements的区别：
// 1、如果要复用抽象类里面的方法，并且要用抽象方法约束白类的话我们就用extends继承抽象类
// 2、如果只是把抽象类当做标准的话我们就用implements实现抽象类

abstract class Animal {
  eat(); // 抽象方法
  run(); // 抽象方法
  printInfo() {
    print('这是一个普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('the dog is eating.');
  }

  @override
  run() {
    print('the dog is running.');
  }
}

void main(List<String> args) {
  Dog dog1 = new Dog();
  dog1.eat();
  dog1.run();
  dog1.printInfo();
}
