import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// widgets
import './widgets.dart';

class EventsForTheDay extends StatelessWidget {
  const EventsForTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EventsProvider>(
      builder: (context, object, child) {
        if (object.getEventsForSelectedDay.isEmpty) {
          return const Center(
            child: Text(
              'No events for this day!',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          );
        } else {
          return ListView.builder(
            // positioning and physics
            physics: const BouncingScrollPhysics(),

            // itemcount and itembuilder
            itemCount: object.getEventsForSelectedDay.length,
            itemBuilder: (context, index) {
              // current event
              final event = object.getEventsForSelectedDay[index];

              // returning the list tile
              return EventTile(
                event: event,
                leading: true, // this will add the bullet points
                showDate: false,
              );
            },
          );
        }
      },
    );
  }
}