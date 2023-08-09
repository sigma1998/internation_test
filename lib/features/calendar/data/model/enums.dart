import 'package:freezed_annotation/freezed_annotation.dart';

part 'enums.freezed.dart';
part 'enums.g.dart';

@freezed
class Enums with _$Enums {
  const factory Enums({
    int? type,
    String? color,
  }) = _Enums;

  factory Enums.fromJson(Map<String, dynamic> json) => _$EnumsFromJson(json);
}
