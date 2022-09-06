void main(List<String> args) {
  var person = {
    'name': '张三',
    'age': 18
  };

  person['work'] = ['程序员', '保洁员'];

  print(person);
  print(person['name']);

  // =============================
  var person2 = new Map();
  person2['name'] = '李四';
  print(person2);
}
