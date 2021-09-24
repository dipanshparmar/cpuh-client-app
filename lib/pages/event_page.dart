import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                ),
                fit: BoxFit.cover,
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
