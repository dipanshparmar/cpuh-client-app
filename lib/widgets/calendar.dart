import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

// providers
import '../providers/events_provider.dart';

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
        // updating the day for the provider
        Provider.of<EventsProvider>(context, listen: false).updateSelectedDay(
          selectedDay,
        );

        // updating the values
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
        markerDecoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          shape: BoxShape.circle,
        ),
        markerSize: 6,
        markersMaxCount: 1,
      ),

      // event loader (used to show the dots below dates)
      eventLoader: (day) {
        return Provider.of<EventsProvider>(context, listen: false)
            .getEventsForDay(day);
      },
    );
  }
}
