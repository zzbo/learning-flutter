// 循环
void main(List<String> args) {
  for (int i = 1; i<=10;i++) {
    print(i);
  }
  print('==========================');


  // 打印偶数
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  print('==========================');

  // 求 1到10 的和
  var sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum+=i;
  }
  print(sum);

  // 遍历数组
  List list = ['一', '二', '三', '四', '五'];

  for (int i = 0; i <list.length; i++) {
    print(list[i]);
  }
  print('==========================');

  // while 循环
  int i = 1;
  while( i <= 5 ) {
    print(i);
    i++;
  }
  print('==========================');

  // do while
  int j = 0;
  do {
    print('执行 $j');
    j++;
  } while(j < 3);
  print('==========================');

  // continue;
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }
  print('==========================');

  // break;
  for (int j = 0; j<5; j++) {
    if (j == 2) {
      break;
    }
    print(j);
  }
}
