import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_model.freezed.dart';
part 'calendar_model.g.dart';

@freezed
class CalendarModel with _$CalendarModel {
  const factory CalendarModel({
    String? month,
    int? year,
    List<Day>? days,
  }) = _CalendarModel;

  factory CalendarModel.fromJson(Map<String, dynamic> json) => _$CalendarModelFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    int? day,
    int? type,
  }) = _Day;

  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}
