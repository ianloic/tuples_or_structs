import 'dart:async';
import 'with_classes_generated.dart';

// Code that calls with classes
Future<Null> call_class_interface(MyInterface service) async {
  final hello_result = await service.hello();
  if (hello_result.error != null) {
    print("There was an error: ${hello_result.error}");
    return;
  }
  print('The service greeted us with: "${hello_result.greeting}".');

  final goodbye_result = await service.goodbye();
  if (goodbye_result.error != null) {
    print("There was an error: ${goodbye_result.error}");
    return;
  }
  print('The service bid us farewell with "${goodbye_result.farewell}".');
  print(
      'We will see them again in ${goodbye_result.days_until_we_see_each_other} days.');
}

class MyInterface_impl implements MyInterface {
  @override
  Future<MyInterface$goodbye> goodbye() async {
    return new MyInterface$goodbye(
        farewell: "bye bye", days_until_we_see_each_other: 42);
  }

  @override
  Future<MyInterface$hello> hello() async {
    return MyInterface$hello(greeting: "hi");
  }
}
