import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart'; // for date formatting

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
  final _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search events...',
            suffixIcon: IconButton(
              icon: const Icon(Icons.cancel_outlined),
              iconSize: 20,
              color: Theme.of(context).iconTheme.color,
              onPressed: () {
                _controller.clear();
                setState(() {
                  _searchQuery = '';
                });
              },
              tooltip: 'Clear search field',
            ),
          ),
          controller: _controller,
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
      body:
          _searchQuery.isEmpty ? _buildRecentSearches() : _buildSearchResults(),
    );
  }

  // method to build search results
  Consumer<EventsProvider> _buildSearchResults() {
    return Consumer<EventsProvider>(
      builder: (context, object, child) {
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
                itemCount: events.length,
                itemBuilder: (context, index) {
                  // current event
                  final event = events[index];

                  return ListTile(
                    title: Text(event.title),
                    subtitle: Row(
                      children: [
                        Expanded(
                          child: Text(
                            event.description,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          DateFormat.yMd().format(event.day).toString(),
                        )
                      ],
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    ),
                    onTap: () {
                      // adding the event to the recent events
                      Provider.of<EventsProvider>(context, listen: false)
                          .addToRecentSearches(event);

                      // pushing the event page
                      Navigator.pushNamed(
                        context,
                        EventPage.routeName,
                        arguments: event.key,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  // method to build recent searches
  Consumer<EventsProvider> _buildRecentSearches() {
    return Consumer<EventsProvider>(
      builder: (context, object, child) {
        // getting the recent searches
        final recentSearches = object.getRecentSearches;

        if (recentSearches.isEmpty) {
          return const Center(
            child: Text(
              'No recent searches yet',
              style: TextStyle(color: Colors.grey),
            ),
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recent searches',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    child: const Text(
                      'clear',
                      style: TextStyle(color: Colors.grey),
                    ),
                    onTap: () {
                      Provider.of<EventsProvider>(context, listen: false)
                          .clearRecentSearches();
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: recentSearches.length,
                itemBuilder: (context, index) {
                  // getting the recentSearch
                  final recentSearch = recentSearches[index];

                  return ListTile(
                    title: Text(recentSearch.title),
                    subtitle: Row(
                      children: [
                        Expanded(
                          child: Text(
                            recentSearch.description,
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          DateFormat.yMd().format(recentSearch.day).toString(),
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
                      arguments: recentSearch.key,
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
