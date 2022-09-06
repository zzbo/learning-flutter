void main(List<String> args) {
  bool a = true;
  bool b = false;

  print(a);
  print(b);
  print('$a $b');

  if (a) {
    print(123);
  }

  if ( a== b) {
    print('a equal b');
  } else {
    print('a is not equal b');
  }
}
