import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// utils
import '../utils/utils.dart';

class EventsProvider with ChangeNotifier {
  // selected date
  DateTime _selectedDay = DateTime.now(); // by default it will be set to today

  // list of events (getting from events.dart)
  final List<Event> _events = events;

  // method to get events for the provided day
  List<Event> getEventsForDay(DateTime day) {
    // returning the data where the day, the month and the year matches
    return _events.where((event) {
      if (event.day != null) {
        return event.day!.day == day.day &&
            event.day!.month == day.month &&
            event.day!.year == day.year;
      } else {
        return false;
      }
    }).toList();
  }

  // method to get events for the _selectedDay
  List<Event> get getEventsForSelectedDay {
    // returning the data where the day, the month and the year matches
    return _events.where((event) {
      if (event.day != null) {
        return event.day!.day == _selectedDay.day &&
            event.day!.month == _selectedDay.month &&
            event.day!.year == _selectedDay.year;
      } else {
        return false;
      }
    }).toList();
  }

  // method to update the selected date
  void updateSelectedDay(DateTime day) {
    _selectedDay = day;
    notifyListeners(); // notifying the listeners
  }

  // method to get an event with the provided key
  Event getEvent(UniqueKey key) {
    return _events.firstWhere((event) => event.key == key);
  }

  // method to find events by query
  List<Event> findEventsByQuery(String query) {
    return events
        .where(
            (event) => event.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  // method to find scheduled events by query
  List<Event> findScheduledEventsByQuery(String query) {
    return events
        .where((event) =>
            event.title.toLowerCase().contains(query.toLowerCase()) &&
            event.day != null)
        .toList();
  }

  // method to find non scheduled events by query
  List<Event> findNonScheduledEventsByQuery(String query) {
    return events
        .where((event) =>
            event.title.toLowerCase().contains(query.toLowerCase()) &&
            event.day == null)
        .toList();
  }

  // method to get all the events
  List<Event> get getAllEvents {
    return [..._events];
  }

  // method to get the scheduled events
  List<Event> get getScheduledEvents {
    return events.where((event) => event.day != null).toList();
  }

  // method to get the non scheduled events
  List<Event> get getNonScheduledEvents {
    return events.where((event) => event.day == null).toList();
  }
}
