// Set

void main(List<String> args) {
  Set set1 = new Set();
  set1.add('aaa');
  set1.add('bbb');
  set1.add('bbb'); // 不能添加重复
  print(set1);
  print(set1.toList());
  print('======================');

  // 使用 Set 对数组去重
  List list1 = ['aa', 'bb', 'cc', 'bb'];
  Set set2 = new Set();
  set2.addAll(list1);
  print(set2);
  print(set2.toList());
  print('======================');
  
}
