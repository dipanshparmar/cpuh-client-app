import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// widgets
import '../widgets/event_tile.dart';

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
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'All events',
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Theme.of(context).iconTheme.color,
            onPressed: () => Navigator.pushNamed(context, SearchPage.routeName),
          )
        ],
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: events.length,
        itemBuilder: (context, index) {
          // current event
          final event = events[index];

          return EventTile(event: event);
        },
      ),
    );
  }
}
