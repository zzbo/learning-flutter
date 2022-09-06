// 集合类型

void main(List<String> args) {
  // List
  var list1 = ['aa', 'bb', true, 12];
  print(list1);

  var list2 = <String>['aa', 'bb', 'cc'];
  print(list2);
  print(list2.length);
  list2.add('dd');
  print(list2);
  print(list2.length);
  print('=======================');

  // 固定长度
  List list3 = List<String>.filled(2, '');
  // list3.add('abc'); // 无法增中元素，因为是固定长度数组
  list3[1] = 'abc';
  print(list3);
  print('=======================');

  // List的属性
  List list4 = ['aaa', 'bbb', 'ccc'];
  print(list4.length);
  print(list4.isEmpty);
  print(list4.isNotEmpty);
  print('=======================');

  // 数组反转
  List list5 = list4.reversed.toList();
  print(list5);
  print('=======================');

  // 批量增加元素
  List list6 = ['aa', 'bb', 'ccc'];
  list6.addAll(['dd', 'ee', 'ff']);
  print(list6);
  print('=======================');

  // 查找元素
  List list7 = ['aa', 'bb', 'cc'];
  print(list7.indexOf('bb'));
  print('=======================');

  // 删除元素
  List list8 = ['aa', 'bb', 'cc'];
  print(list8.remove('bb'));
  print(list8);
  print('=======================');

  // 删除指定下标的元素
  List list9 = ['aa', 'bb', 'cc'];
  print(list9.removeAt(2));
  print(list9);
  print('=======================');

  // 修改元素
  List list10 = ['aa', 'bb', 'cc'];
  list10.fillRange(2, 3, 'ddd'); // 把第3个元素修改为 ddd
  print(list10);
  list10.fillRange(1, 3, 'eee'); // 把第2、3个元素修改为 eee
  print(list10);
  print('=======================');

  // 插入元素
  List list11 = ['aa', 'bb', 'cc'];
  list11.insert(1, 'dd'); // 把 dd 插入到数组下标为1的位置中
  print(list11);
  list11.insertAll(2, ['ee', 'ff']); // 把 ['ee', 'ff'] 插入到数组下标为2的位置中
  print(list11);
  print('=======================');

  // 数组转字符串
  List list12 = ['aa', 'bb', 'cc'];
  String str1 = list12.join('');
  String str2 = list12.join('-');
  print(str1);
  print(str1 is String);
  print(str2);
  print('=======================');

  // 字符串转数组
  String str3 = 'aa=bb=cc';
  List list13 = str3.split('=');
  print(list13);

}
