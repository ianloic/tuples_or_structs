// Tuple class definitions somewhere in our FIDL library
class Tuple2<FIRST, SECOND> {
  final FIRST first;
  final SECOND second;
  Tuple2(this.first, this.second);
}

class Tuple3<FIRST, SECOND, THIRD> {
  final FIRST first;
  final SECOND second;
  final THIRD third;
  Tuple3(this.first, this.second, this.third);
}

class Tuple4<FIRST, SECOND, THIRD, FOURTH> {
  final FIRST first;
  final SECOND second;
  final THIRD third;
  final FOURTH fourth;
  Tuple4(this.first, this.second, this.third, this.fourth);
}
