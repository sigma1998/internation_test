import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internation_test/features/calendar/data/calendar_repo.dart';
import 'package:internation_test/features/calendar/data/model/calendar_model.dart';
import 'package:internation_test/features/calendar/data/model/enums.dart';

part 'calendar_event.dart';

part 'calendar_state.dart';

part 'calendar_bloc.freezed.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final repo = CalendarRepo();

  CalendarBloc() : super(const CalendarState()) {
    on<GetCalendar>((event, emit) async {
      final res = await repo.getCalendar();
      List<Day> days = [];
      final dayIndex =
          DateTime(res.year ?? 2022, int.parse(res.month ?? '-1')).weekday;
      final monthLength = DateUtils.getDaysInMonth(
          res.year ?? 2022, int.parse(res.month ?? '1'));
      for (int i = 1; i < dayIndex; i++) {
        days.add(const Day(day: 0, type: null));
      }
      int length = res.days?.length ?? 0;
      for (int i = 1; i <= monthLength; i++) {
        int? type;
        for (int j = 0; j < length; j++) {
          if (res.days?[j].day == i) {
            type = res.days?[j].type ?? 0;
          }
        }
        days.add(Day(day: i, type: type));
      }
      for (int i = days.length; i <= 35; i++) {
        days.add(const Day(day: 0, type: null));
      }
      emit(state.copyWith(
          model: CalendarModel(
        days: days,
        month: res.month,
        year: res.year,
      )));
    });

    on<GetEnum>((event, emit) async {
      final res = await repo.getEnums();
      emit(state.copyWith(enums: res));
      add(GetCalendar(year: event.year, month: event.month));
    });
  }
}
