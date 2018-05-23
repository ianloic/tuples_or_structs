import 'dart:async';

// Generated interface code with bindings awareness of errors
class MyInterface$goodbye {
  final String farewell;
  final int days_until_we_see_each_other;
  MyInterface$goodbye(this.farewell, this.days_until_we_see_each_other);
}

abstract class MyInterface_classes {
  Future<String> hello();
  Future<MyInterface$goodbye> goodbye();
}
