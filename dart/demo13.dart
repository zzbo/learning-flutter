// forEach, map, where, any, every
void main(List<String> args) {
  List list1 = ['aa', 'bb', 'cc'];
  
  list1.forEach((element) {
    print(element);
  });
  print('======================');

  // 修改集合的数据
  List list2 = [1, 2, 3, 4];
  List list3 = list2.map((value) {
    return value * 2;
  }).toList();

  print(list3);
  print('======================');

  // 查找数组中满足条件的元素，并返回一个集合, 类似于 JS 的 filter
  List list4 = [1, 2, 3, 4, 5];
  List list5 = list4.where((element) => element > 3).toList();
  print(list5);
  print('======================');

  // 判断数组中是否有满足条件元素，如果一个元素满足条件则返回 true，否则返回 false
  List list6 = [1, 2, 3, 4, 5];
  var bool = list6.any((value) {
    return value > 3;
  });
  print(bool);
  print('======================');

  // 判断数组中是否全部元素都满足条件，如果全部元素都满足条件则返回 true，否则返回 false
  List list7 = [1, 2, 3, 4, 5];
  var bool2 = list7.every((element) {
    return element > 1;
  });
  print(bool2);
  print('======================');

  // set 的循环
  Set set1 = new Set();
  set1.addAll([1, 2, 3, 4]);
  set1.forEach((element) => print(element));
  print('======================');

  // map 的循环
  Map map1 = {
    'name': 'aaa',
    'age': 18
  };
  map1.forEach((key, value) {
    print('$key ::: $value');
  });
}
