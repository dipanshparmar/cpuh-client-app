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

  // list to hold recent searches
  final List<Event> _recentSearches = [];

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

  // getter to get recent events
  List<Event> get getRecentSearches {
    return [..._recentSearches.reversed];
  }

  // method to add event to recent events
  void addToRecentSearches(Event event) {
    // remove the event first if it already exists in some other index
    _recentSearches.removeWhere((e) => e.key == event.key);

    // if the length of recent searches is equals to 6 then remove the element at first index and then add the value
    if (_recentSearches.length == 6) {
      _recentSearches.removeAt(0);
    }

    // add the event
    _recentSearches.add(event);
    notifyListeners(); // notifying listeners
  }

  // method to clear the recent searches
  void clearRecentSearches() {
    _recentSearches.removeRange(0, _recentSearches.length);
    notifyListeners();
  }

  // method to get all the events
  List<Event> get getAllEvents {
    return [..._events];
  }
}
