import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:myapp/week07/calendar_scheduler/const/colors.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  const MainCalendar({
    super.key,
    required this.onDaySelected,
    required this.selectedDate,
  });
}
