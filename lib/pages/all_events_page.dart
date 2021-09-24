import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// pages
import './pages.dart';

class AllEventsPage extends StatelessWidget {
  const AllEventsPage({Key? key}) : super(key: key);

  // route name
  static const routeName = '/all-events';

  @override
  Widget build(BuildContext context) {
    // events provider
    final eventsProvider = Provider.of<EventsProvider>(context, listen: false);

    // getting the events
    final events = eventsProvider.getAllEvents;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('All events'),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: events.length,
        itemBuilder: (context, index) {
          // current event
          final event = events[index];

          return ListTile(
            title: Text(event.title),
            subtitle: Text(DateFormat.yMMMEd().format(event.day).toString()),
            onTap: () => Navigator.pushNamed(
              context,
              EventPage.routeName,
              arguments: event.key,
            ),
          );
        },
      ),
    );
  }
}
