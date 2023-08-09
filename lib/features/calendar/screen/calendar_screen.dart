import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:internation_test/features/calendar/bloc/calendar_bloc.dart';
import 'package:internation_test/features/calendar/screen/widget/week.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();

  static Widget route() {
    return BlocProvider(
      create: (context) =>
          CalendarBloc()..add(GetEnum(month: DateTime.now().month, year: 2022)),
      child: const CalendarScreen(),
    );
  }
}

class _CalendarScreenState extends State<CalendarScreen> {

  final week = ['Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat', 'Sun'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "CALENDAR",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CalendarBloc, CalendarState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ListView(
              children: [
                const SizedBox(height: 32),
                Text(
                  state.model?.year.toString() ?? '',
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                ),
                Text(
                  state.model?.month.toString() ?? '',
                  style: const TextStyle(fontSize: 24, color: Colors.black),
                ),
                const SizedBox(height: 24),
                WeekWidget(),
                const SizedBox(height: 24),
                ...Iterable.generate(5).map<Widget>((cRange) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: Iterable.generate(7).map<Widget>((e) {
                        String day = state.model?.days?[cRange * 7 + e].day == 0
                            ? ''
                            : (state.model?.days?[cRange * 7 + e].day ?? -1)
                                .toString();
                        return GestureDetector(
                          onTap: () {
                            if (state.model?.days?[cRange * 7 + e].type ==
                                null) {
                              return;
                            }
                            showDialog(
                                context: context,
                                builder: (_) {
                                  final data = DateTime(
                                      state.model?.year ?? 2022,
                                      int.parse(state.model?.month ?? '08'),
                                      int.parse(day));
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 150,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              color: Colors.green),
                                          child: Text(
                                            '${state.model?.days?[cRange * 7 + e].type} \n ${DateFormat.yMMMMEEEEd().format(data)}',
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: fromHex(getColor(
                                      state,
                                      state
                                          .model?.days?[cRange * 7 + e].type) ??
                                  '#FFFFFF'),
                            ),
                            child: Text(
                              day,
                              style: TextStyle(
                                fontSize: 12,
                                color: e == 6 ? Colors.red : Colors.black,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  );
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
  }

  String? getColor(CalendarState state, int? type) {
    String? color;
    if (type == null) return color;
    state.enums?.forEach((element) {
      if (element.type == type) {
        color = element.color;
      }
    });
    return color;
  }



  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
