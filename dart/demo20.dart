// 多态
// 允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果。
// 子类的实例赋值给父类的引用。
// 多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。


abstract class Animal {
  eat(); // 抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print('the dog is eating.');
  }

  run() {
    print('the dong is running.');
  }
}

void main(List<String> args) {
  Dog dog1 = new Dog();
  dog1.eat();
  dog1.run();

  Animal dog2 = new Dog();
  dog2.eat();
  // dog2.run(); // 将子类的实例赋值给父类之后，无法访问父类没有的方法。The method 'run' isn't defined for the type 'Animal'.

}
