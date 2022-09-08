// late 关键字主要用于延迟初始化

class Person {
  late String name; // 如果不用 late, 会提示 name 不能非空
  late int age; // 如果不用 late, 会提示 age 不能非空
  // Person(this.name, this.age); // 不使用构建函数

  void setName(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String getName() {
    return '${name} ---- ${age}';
  }
}

void main(List<String> args) {
  Person p1 = new Person();
  p1.setName('aaa', 23);
  print(p1.getName());
}
