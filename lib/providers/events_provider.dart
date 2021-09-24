import 'package:flutter/material.dart';

// models
import '../models/models.dart';

class EventsProvider with ChangeNotifier {
  // list of events
  final List<Event> _events = [
    Event(day: DateTime(2021, 9, 15), title: 'hello'),
    Event(day: DateTime(2021, 9, 25), title: 'test'),
  ];

  // method to get an event of a specific date
  List<Event> getEventsForDay(DateTime day) {
    // returning the data where the day, the month and the year matches
    return _events
        .where(
          (event) =>
              event.day.day == day.day &&
              event.day.month == day.month &&
              event.day.year == day.year,
        )
        .toList();
  }
}
