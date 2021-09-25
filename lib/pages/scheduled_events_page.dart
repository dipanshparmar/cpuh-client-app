import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/events_provider.dart';

// widgets
import '../widgets/event_tile.dart';

// pages
import './pages.dart';

// utils
import '../utils/search_type.dart';

class ScheduledEventsPage extends StatelessWidget {
  const ScheduledEventsPage({Key? key}) : super(key: key);

  // route name
  static const routeName = '/scheduled-events-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Scheduled events',
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Theme.of(context).iconTheme.color,
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: SearchType.scheduledEvents,
            ),
          )
        ],
      ),
      body: Consumer<EventsProvider>(
        builder: (context, object, child) {
          // getting the scheduled events
          final scheduledEvents = object.getScheduledEvents;

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: scheduledEvents.length,
            itemBuilder: (context, index) {
              // getting the current event
              final event = scheduledEvents[index];

              // returning the event tile
              return EventTile(event: event);
            },
          );
        },
      ),
    );
  }
}
