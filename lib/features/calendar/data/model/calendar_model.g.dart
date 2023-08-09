// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarModel _$$_CalendarModelFromJson(Map<String, dynamic> json) =>
    _$_CalendarModel(
      month: json['month'] as String?,
      year: json['year'] as int?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => Day.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarModelToJson(_$_CalendarModel instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'days': instance.days,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      day: json['day'] as int?,
      type: json['type'] as int?,
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'day': instance.day,
      'type': instance.type,
    };
