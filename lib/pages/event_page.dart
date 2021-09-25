import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// utils
import '../utils/semester.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  // route name
  static const String routeName = '/event-page';

  @override
  Widget build(BuildContext context) {
    // getting the key of the event
    final eventKey = ModalRoute.of(context)!.settings.arguments as UniqueKey;

    // getting the event with the provided key
    final event =
        Provider.of<EventsProvider>(context, listen: false).getEvent(eventKey);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close),
          color: Theme.of(context).iconTheme.color,
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          event.title,
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  event.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  event.semester == Semester.first
                      ? '1st semester'
                      : '2nd semester',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'Date: ${event.day != null ? DateFormat.yMMMEd().format(event.day!) : 'To be notified later'}',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Text(
              event.description,
              style: const TextStyle(
                letterSpacing: .2,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
