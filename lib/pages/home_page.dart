import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// widgets
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Calendar',
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Theme.of(context).iconTheme.color,
            tooltip: 'Search events',
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Calendar(),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            child: Text(
              'Events',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Consumer<EventsProvider>(
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
                    padding: const EdgeInsets.symmetric(horizontal: 8),

                    // itemcount and itembuilder
                    itemCount: object.getEventsForSelectedDay.length,
                    itemBuilder: (context, index) {
                      // current event
                      final event = object.getEventsForSelectedDay[index];

                      // returning the list tile
                      return ListTile(
                        leading: SizedBox(
                          height: double.infinity,
                          child: Icon(
                            Icons.circle,
                            size: 6,
                            color: Theme.of(context).iconTheme.color,
                          ),
                        ),
                        title: Text(event.title),
                        onTap: () {
                          
                        },
                      );
                    },
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
