part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    CalendarModel? model,
    List<Enums>? enums,
  }) = _CalendarState;

  const CalendarState._();
}
