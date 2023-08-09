import 'dart:ui';

enum DateType {
  d100._(Color(0xffF2F4F5), 100),
  d200._(Color(0xffFFCF00), 200),
  d300._(Color(0xffF7F9FA), 300);

  const DateType._(this.color, this.value);

  final Color color;
  final int value;
}
