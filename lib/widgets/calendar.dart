import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({
    Key? key,
  }) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late DateTime _selectedDay;
  late DateTime _focusedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    _focusedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      // initial configuration
      focusedDay: _focusedDay,
      firstDay: DateTime(DateTime.now().year),
      lastDay: DateTime(DateTime.now().year, 12),

      // header style
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),

      // days of week style
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(
          fontSize: 12,
        ),
        weekendStyle: TextStyle(
          fontSize: 12,
        ),
      ),

      // on day selected
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
        });
      },

      // selected day predicate
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      // calendar styles
      calendarStyle: CalendarStyle(
        selectedTextStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        selectedDecoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          shape: BoxShape.circle,
        ),
        todayDecoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
