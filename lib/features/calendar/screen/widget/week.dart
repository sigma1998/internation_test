import 'package:flutter/material.dart';

class WeekWidget extends StatelessWidget {
  final week = ['Mon', 'Tue', 'Wen', 'Thu', 'Fri', 'Sat', 'Sun'];

  WeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return  Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: week.map<Widget>((e) {
         return Text(
           e,
           style: TextStyle(
             fontSize: 12,
             color: e == 'Sun' ? Colors.red : Colors.black45,
           ),
         );
       }).toList());
  }

}