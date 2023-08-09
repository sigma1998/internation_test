import 'package:dio/dio.dart';
import 'package:internation_test/service/dio/custom_dio.dart';

class CalendarProvider {
  final dio = CustomDio().dio;

  Future<Response> getCalendar()async {
    final res = await dio.get('/b/ADYD');
    return res;
  }

  Future<Response> getEnums()async {
    final res = await dio.get('/b/N5M6');
    return res;
  }
}