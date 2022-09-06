void main(List<String> args) {
  var list = ['张三', 12, true];

  print(list.length);
  print(list);

  // ========================
  // 列表类型
  var list2 = <String>['张三', '李四', '王五'];

  print(list[0]);
  print(list2);
  print(list2.length);

  // ========================
  // 给 list 里面增加数据
  var list3 = [];

  list3.add(0);
  list3.add(1);

  print(list3);
  print(list3.length);

  // ========================
  // 定义数组长度
  var list4 = List.filled(5, 1);
  print(list4);
  list4[0] = 8;
  print(list4);

  // ========================
  // 修改数组长度
  var list5 = List.filled(3, '');
  // list5.length = 1; // 数组长度不能被修改，因为这是一个固定长度的数组
  // print(list5);

  // ========================
  // 修改数组长度2
  var list6 = [1, 2, 3, 4, 5];
  list6.length = 3;
  print(list6); // 非固定长度的数组可以被修改长度
}
