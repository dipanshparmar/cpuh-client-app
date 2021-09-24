import 'package:flutter/material.dart';

// models
import '../models/models.dart';

class EventsProvider with ChangeNotifier {
  // selected date
  DateTime _selectedDay = DateTime.now(); // by default it will be set to today

  // list of events
  final List<Event> _events = [
    Event(day: DateTime(2021, 9, 15), title: 'hello'),
    Event(day: DateTime(2021, 9, 25), title: 'test'),
    Event(day: DateTime(2021, 9, 26), title: 'test'),
  ];

  // method to get events for the provided day
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

  // method to get events for the _selectedDay
  List<Event> get getEventsForSelectedDay {
    // returning the data where the day, the month and the year matches
    return _events
        .where(
          (event) =>
              event.day.day == _selectedDay.day &&
              event.day.month == _selectedDay.month &&
              event.day.year == _selectedDay.year,
        )
        .toList();
  }

  // method to update the selected date
  void updateSelectedDay(DateTime day) {
    _selectedDay = day;
    notifyListeners(); // notifying the listeners
  }
}
