import 'dart:async';

// Generated interface code with bindings awareness of errors
class MyInterface$goodbye {
  final String farewell;
  final int days_until_we_see_each_other;
  MyInterface$goodbye(
      {@required this.farewell, @required this.days_until_we_see_each_other});
}

abstract class MyInterface {
  Future<String> hello();
  Future<MyInterface$goodbye> goodbye();
}

// Stolen from package:meta
class Required {
  const Required();
}

const Required required = const Required();
