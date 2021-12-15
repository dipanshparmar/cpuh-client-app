import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

// providers
import '../providers/events_provider.dart';

// widgets
import './widgets.dart';

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
    // getting the height
    final height = MediaQuery.of(context).size.height;

    return TableCalendar(
      // initial configuration
      focusedDay: _focusedDay,
      firstDay: DateTime(
        DateTime.now().year - 1,
      ), // starting the calendar from the previous year e.g. 2020 (previous year) - 2021 (current year)
      lastDay: DateTime(DateTime.now().year + 1, 1),

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

        // pushing the events for a day if the height is less than 600
        if (height < 600) {
          showModalBottomSheet(
            isDismissible: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            context: context,
            builder: (context) {
              return SizedBox(
                height: height / 2, // half of the screen size
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color:
                              Theme.of(context).backgroundColor.withOpacity(.5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const Expanded(
                      child: EventsForTheDay(),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },

      // selected day predicate
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },

      // calendar styles
      calendarStyle: CalendarStyle(
        holidayTextStyle: TextStyle(
          color: Colors.red.shade900,
        ),
        // overriding the default configs
        holidayDecoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
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

      // used to define holiday dates
      holidayPredicate: (day) {
        return day.weekday == DateTime.sunday;
      },

      // event loader (used to show the dots below dates)
      eventLoader: (day) {
        return Provider.of<EventsProvider>(context, listen: false)
            .getEventsForDay(day);
      },
    );
  }
}
