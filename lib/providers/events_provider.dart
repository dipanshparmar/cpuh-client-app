import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

// models
import '../models/models.dart';

class EventsProvider with ChangeNotifier {
  // selected date
  DateTime _selectedDay = DateTime.now(); // by default it will be set to today

  // list of events (getting from events.dart)
  List<Event> _events = [];

  // function to fetch the events
  Future<void> fetchEvents(BuildContext context) async {
    try {
      // making the api call
      final http.Response response =
          await http.get(Uri.parse('http://10.0.2.2:5000/api/events/'));

      // decoding the data
      final Map data = jsonDecode(response.body);

      // grabbing the events
      final List tempEvents = data['data'];

      // setting the events
      _events = tempEvents.map((e) {
        return Event(
          key: UniqueKey(),
          title: e['title'],
          day: e['day'] != null ? getDate(e['day']) : null,
          description: e['description'] ?? 'This event has no description',
          imageUrl: e['imageUrl'] ?? '',
          isFestival: e['isFestival'],
        );
      }).toList();

      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Events fetched successfully!'),
        ),
      );

      // notifying the listeners
      notifyListeners();
    } catch (err) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Couldn\'t fetch the events! Please retry.'),
        ),
      );

      print(err);
    }
  }

  // function to the the date in format
  DateTime getDate(String date) {
    // getting the values
    List<String> splits = date.split('-');
    String year = splits[0];
    String month = splits[1];
    String day = splits[2];

    // returning the date
    return DateTime(int.parse(year), int.parse(month), int.parse(day));
  }

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
    return _events
        .where(
            (event) => event.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  // method to find scheduled events by query
  List<Event> findScheduledEventsByQuery(String query) {
    return _events
        .where((event) =>
            event.title.toLowerCase().contains(query.toLowerCase()) &&
            event.day != null)
        .toList();
  }

  // method to find non scheduled events by query
  List<Event> findNonScheduledEventsByQuery(String query) {
    return _events
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
    return _events.where((event) => event.day != null).toList();
  }

  // method to get the non scheduled events
  List<Event> get getNonScheduledEvents {
    return _events.where((event) => event.day == null).toList();
  }

  // method to find festivals by query
  List<Event> findFestivalsByQuery(String query) {
    return _events
        .where(
          (element) =>
              element.isFestival &&
              element.title.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
  }

  // getter to get all the festivals
  List<Event> get getFestivals {
    return _events.where((element) => element.isFestival).toList();
  }
}
