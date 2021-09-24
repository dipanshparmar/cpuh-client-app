import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// providers
import '../providers/providers.dart';

// pages
import './pages.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  // routename
  static const routeName = '/search-page';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // this will hold the search field query
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search events...',
          ),
          cursorColor: Colors.teal,
          autofocus: true,
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {
              // hiding the keyboard
              FocusScope.of(context).unfocus();

              // popping the screen
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Consumer<EventsProvider>(
        builder: (context, object, child) {
          if (_searchQuery.isEmpty) {
            return const Center(
              child: Text(
                'Please enter a search query!',
                style: TextStyle(color: Colors.grey),
              ),
            );
          } else {
            // getting the events
            final events = object.findEventsByQuery(_searchQuery);

            // if no events are found then inform the user
            if (events.isEmpty) {
              return const Center(
                child: Text(
                  'No events found!',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }

            // if events are found then display the events
            return ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                // current event
                final event = events[index];

                return ListTile(
                  title: Text(event.title),
                  onTap: () => Navigator.pushNamed(
                    context,
                    EventPage.routeName,
                    arguments: event.key,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
