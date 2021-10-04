import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

// providers
import '../providers/providers.dart';

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
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // getting today
              DateTime today = DateTime.now();

              // this variable will store that whether the event day is today or not
              bool isToday = false;

              // if event has a date
              if (event.day != null) {
                // storing the event day
                final eventDay = event.day;

                // checking if the event day is today
                if (eventDay!.day == today.day &&
                    eventDay.month == today.month &&
                    eventDay.year == today.year) {
                  isToday = true;
                }
              }

              // creating the share message
              // if event is today then show today if not then if there is a date then display that date else display nothing
              final message =
                  'Check out the event \'${event.title}\' happening in Career Point University Hamirpur ${isToday ? 'today' : event.day != null ? 'on ${DateFormat.yMMMd().format(event.day!)}' : ''}: <url>';

              // Sharing the message
              Share.share(message);
            },
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  event.imageUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'Date: ${event.day != null ? DateFormat.yMMMEd().format(event.day!) : 'To be notified later'}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
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
