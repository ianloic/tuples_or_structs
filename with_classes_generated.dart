import 'dart:async';

// Generated interface code with generated response classes
class MyInterface$hello {
  final String error;
  final String greeting;
  MyInterface$hello({this.error, this.greeting});
}

class MyInterface$goodbye {
  final String error;
  final String farewell;
  final int days_until_we_see_each_other;
  MyInterface$goodbye(
      {this.error, this.farewell, this.days_until_we_see_each_other});
}

abstract class MyInterface {
  Future<MyInterface$hello> hello();
  Future<MyInterface$goodbye> goodbye();
}
