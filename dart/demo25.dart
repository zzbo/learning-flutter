// 泛型接口

abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key, String value);
}

// 定义泛型类
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('this is FileCache setByKey.');
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('this is MemoryCache setByKey.');
  }
}

void main(List<String> args) {
  FileCache myFileCache = new FileCache<String>();
  myFileCache.setByKey('aa', 'bbbb');
}
