class MyAppDatabase {
  static MyAppDatabase? _instance = MyAppDatabase._internal();

  MyAppDatabase._internal();
  factory MyAppDatabase() {
    _instance ??= MyAppDatabase._internal();
    return _instance!;
  }
}
