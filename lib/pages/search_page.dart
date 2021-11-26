import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart'; // for date formatting

// providers
import '../providers/providers.dart';

// pages
import './pages.dart';

// utils
import '../utils/utils.dart';

// models
import '../models/event.dart';

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
    // getting the search type
    final searchType = ModalRoute.of(context)!.settings.arguments as SearchType;

    // this will store the hint text
    String hintText = 'Search events...';

    // deciding the hint text according to the search type
    // no if for SearchType.allEvents because the by default hintText is sufficient for that
    if (searchType == SearchType.scheduledEvents) {
      hintText = 'Search scheduled events...';
    } else if (searchType == SearchType.nonScheduledEvents) {
      hintText = 'Search non-scheduled events...';
    } else if (searchType == SearchType.festivals) {
      hintText = 'Search festivals...';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
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
      body: _searchQuery.isNotEmpty
          ? _buildSearchResults(searchType)
          : const Text(''),
    );
  }

  // method to build search results
  Consumer<EventsProvider> _buildSearchResults(SearchType searchType) {
    return Consumer<EventsProvider>(
      builder: (context, object, child) {
        // variable to store the events
        List<Event> events;

        // variable to store the no events found message
        String noEventsFoundMessage = 'No events found!';

        // storing the events and the no events found message according to the search type
        if (searchType == SearchType.allEvents) {
          events = object.findEventsByQuery(_searchQuery);
        } else if (searchType == SearchType.scheduledEvents) {
          events = object.findScheduledEventsByQuery(_searchQuery);
          noEventsFoundMessage = 'No scheduled events found!';
        } else if (searchType == SearchType.nonScheduledEvents) {
          events = object.findNonScheduledEventsByQuery(_searchQuery);
          noEventsFoundMessage = 'No non-scheduled events found!';
        } else {
          events = object.findFestivalsByQuery(_searchQuery);
          noEventsFoundMessage = 'No festivals found!';
        }

        // if no events are found then inform the user
        if (events.isEmpty) {
          return Center(
            child: Text(
              noEventsFoundMessage,
              style: const TextStyle(color: Colors.grey),
            ),
          );
        }

        // if events are found then display the events
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Text(
                'Search results',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: events.length,
                itemBuilder: (context, index) {
                  // current event
                  final event = events[index];

                  return ListTile(
                    onLongPress: () {
                      ScaffoldMessenger.of(context).removeCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Theme.of(context).primaryColor,
                          content: Text(
                            event.title,
                            style: TextStyle(
                                color: Theme.of(context).backgroundColor),
                          ),
                          action: SnackBarAction(
                            label: 'Close',
                            textColor: Theme.of(context).colorScheme.secondary,
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .removeCurrentSnackBar();
                            },
                          ),
                        ),
                      );
                    },
                    title: Text(
                      event.title,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Row(
                      children: [
                        Expanded(
                          child: Text(
                            event.description,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        if (event.day !=
                            null) // if date is not null then show the date
                          Text(
                            DateFormat.yMd().format(event.day!).toString(),
                          )
                      ],
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                    onTap: () => Navigator.pushNamed(
                      context,
                      EventPage.routeName,
                      arguments: event.key,
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
