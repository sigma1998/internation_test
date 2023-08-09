import 'package:internation_test/features/calendar/data/calendar_provider.dart';
import 'package:internation_test/features/calendar/data/model/calendar_model.dart';
import 'package:internation_test/features/calendar/data/model/enums.dart';

class CalendarRepo {
  final provider = CalendarProvider();

  Future<CalendarModel> getCalendar() async {
    final res = await provider.getCalendar();
    final data = CalendarModel.fromJson(res.data);
    return data;
  }

  Future<List<Enums>> getEnums() async {
    final res = await provider.getEnums();
    print('ENUM________________________$res');
    List<Enums> list = await res.data.map<Enums>((e) {
      return Enums.fromJson(e);
    }).toList();
    return list;
  }
}
