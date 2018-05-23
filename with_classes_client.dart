import 'dart:async';
import 'with_classes_generated.dart';

// Code that calls with classes
Future<Null> call_class_interface(MyInterface_classes service) async {
  MyInterface$hello hello_result = await service.hello();
  if (hello_result.error != null) {
    print("There was an error: ${hello_result.error}");
    return;
  }
  print('The service greeted us with: "${hello_result.greeting}".');

  MyInterface$goodbye goodbye_result = await service.goodbye();
  if (goodbye_result.error != null) {
    print("There was an error: ${goodbye_result.error}");
    return;
  }
  print('The service bid us farewell with "${goodbye_result.farewell}".');
  print(
      'We will see them again in ${goodbye_result.days_until_we_see_each_other} days.');
}
