// Map

void main(List<String> args) {
  Map person = {
    "name": "aaa"
  };

  print(person);
  print(person.keys.toList());
  print(person.values.toList());
  print('======================');

  Map map1 = new Map();
  map1['name'] = "bbb";
  map1['age'] = 18;
  print(map1);
  print(map1.keys.toList());
  print(map1.values.toList());
  print(map1.isEmpty);
  print(map1.isNotEmpty);
  print('======================');

  // 一次性增加多个属性
  Map map2 = {
    'name': 'ccc',
    'age': 20,
    'sex': '男'
  };

  map2.addAll({
    'school': 'test school',
    'address': 'test address'
  });

  print(map2);
  print('======================');

  // 删除 key
  Map map3 = {
    'name': 'ccc',
    'age': 20,
    'sex': '男'
  };
  map3.remove('sex');

  print(map3);
  print('======================');

  // 判断是否包含某个 key
  Map map4 = {
    'name': 'ccc',
    'age': 20,
    'sex': '男'
  };

  print(map4.containsKey('age'));
}
