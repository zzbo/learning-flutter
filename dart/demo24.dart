// 泛型
// 通俗理解：泛型是解决 类 接口 方法的复用性，以及对不特定数据类型的支持（类型校验）

// 泛型类
class MyList<T> {
  List list = <T>[];
  void add(T element) {
    this.list.add(element);
  }

  List getList() { 
    return this.list;
  }
}

void main(List<String> args) {
  // 如有一个函数要求传入什么返回的值就是什么，但是类型未知
  // 类型固定
  String getData(String value) {
    return value;
  }

  // 使用泛型解决指定类型返回值
  T getData2<T>(T value) {
    return value;
  }

  print(getData2<String>('abc'));
  print(getData2<int>(123));
  print('=====================');

  // 泛型类
  List list1 = new List<String>.filled(3, '');
  print(list1);

  List list2 = new List<int>.filled(3, 1);
  print(list2);
  print('=====================');

  MyList list3 = new MyList();
  list3.add('aabbcc');
  list3.add(12);
  list3.add(true);
  print(list3.getList());
  print('=====================');

  // 给泛型类指定类型
  MyList list4 = new MyList<String>();
  list4.add('list4__');
  // list4.add(123); // 无法添加非 String 的元素，运行时会报错
  print(list4.getList());
  print('=====================');
}
