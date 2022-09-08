// async await
// async 和 await
// 这两个关键字的使用只需要记住两点：
// 只有 async 方法才能使用 await 关键字调用方法
// 如果调用别的 async 方法必须使用 await 关键字
// async 是让方法变成异步。
// await 是等待异步方法执行完成。
// 和 JS 相同

testAsync() async {
  return 'abc';
}

void main(List<String> args) async {
  var reslut = await testAsync();
  print(reslut);
}
