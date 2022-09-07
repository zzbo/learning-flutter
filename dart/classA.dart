// 类的私有属性 和 私有方法，只有在单独文件中才能生效
// this file is referenced by ./demo16.dart

class A {
  String name = 'unnamed';
  int _age = 0;

  A(name, age) {
    this.name = name ?? this.name;
    this._age = age ?? this._age;
  }

  printInfo() {
    this._addTail();
    print('${this.name}----${this._age}');
  }

  void _addTail() {
    this.name = '${name}___';
  }
}
