import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// widgets
import '../widgets/widgets.dart';

// pages
import './pages.dart';

// utils
import '../utils/search_type.dart';

class NonScheduledEventsPage extends StatelessWidget {
  const NonScheduledEventsPage({Key? key}) : super(key: key);

  // routename
  static const routeName = '/non-scheduled-events-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Non scheduled events',
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            color: Theme.of(context).iconTheme.color,
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: SearchType.nonScheduledEvents,
            ),
          )
        ],
      ),
      body: Consumer<EventsProvider>(
        builder: (context, object, child) {
          // getting the scheduled events
          final nonScheduledEvents = object.getNonScheduledEvents;

          return ListView.builder(
            itemCount: nonScheduledEvents.length,
            itemBuilder: (context, index) {
              // getting the current event
              final event = nonScheduledEvents[index];

              // returning the event tile
              return EventTile(event: event);
            },
          );
        },
      ),
    );
  }
}
