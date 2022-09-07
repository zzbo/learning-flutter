// 封装、继承、多态

class Person {
  String name = 'unnamed';
  int age = 1;
  String work = '';

  Person(this.name, this.age);
  Person.work(this.name, this.age, this.work);

  void printInfo() {
    print('super.printInfo');
    print('${this.name}---${this.age}');
  }
}

// 继承
class Teacher extends Person {
  String sex = '';
  Teacher(super.name, super.age, super.work, String sex): super.work() {
    this.sex = sex;
  }

  printTeacherInfo() {
    print('$name --- $age --- $sex --- $work');
  }
}

class Student extends Person {
  String sex = '';
  Student(super.name, super.age, String sex) {
    this.sex = sex;
  }

  printStudent() {
    print('$name --- $age --- $sex');
  }

  @override // 这里的 @override 可以不写
  void printInfo() {
    print('override super.printInfo');
  }
}

void main(List<String> args) {
  Teacher teacher1 = new Teacher('aaa', 18, '男', '老师');
  teacher1.printInfo();
  teacher1.printTeacherInfo();

  Student student1 = new Student('bbb', 20, '男');
  student1.printStudent();
  // 调用复写父类的方法
  student1.printInfo();
}
