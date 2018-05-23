import 'dart:async';
import 'tuple.dart';

import 'with_tuples_generated.dart';

// Code that calls with tuples
Future<Null> call_tuple_interface(MyInterface_tuples service) async {
  Tuple2<String, String> hello_result = await service.hello();
  if (hello_result.first != null) {
    print("There was an error: ${hello_result.first}");
    return;
  }
  print('The service greeted us with: "${hello_result.second}".');

  Tuple3<String, String, int> goodbye_result = await service.goodbye();
  if (goodbye_result.first != null) {
    print("There was an error: ${goodbye_result.first}");
  }
  print('The service bid us farewell with "${goodbye_result.second}".');
  print('We will see them again in ${goodbye_result.third} days.');
}
