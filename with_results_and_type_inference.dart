import 'dart:async';
import 'with_results_generated.dart';

// Code that uses the results-aware generated interface.
Future<Null> call_class_interface(MyInterface service) async {
  try {
    print('The service greeted us with: "${await service.hello()}".');

    final goodbye_result = await service.goodbye();
    print('The service bid us farewell with "${goodbye_result.farewell}".');
    print(
        'We will see them again in ${goodbye_result.days_until_we_see_each_other} days.');
  } on String catch (error) {
    print("There was an error: ${error}");
    return;
  }
}

class MyInterface_impl implements MyInterface {
  @override
  Future<MyInterface$goodbye> goodbye() async {
    return new MyInterface$goodbye(
        farewell: "bye bye", days_until_we_see_each_other: 42);
  }

  @override
  Future<String> hello() async {
    return "hi";
  }
}
