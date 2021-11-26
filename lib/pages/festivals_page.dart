import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// pages
import '../pages/pages.dart';

// utils
import '../utils/utils.dart';

// providers
import '../providers/providers.dart';

// widgets
import '../widgets/widgets.dart';

class FestivalsPage extends StatelessWidget {
  const FestivalsPage({Key? key}) : super(key: key);

  // route name
  static const routeName = '/festival-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Festivals',
          style: TextStyle(color: Theme.of(context).backgroundColor),
        ),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: SearchType.festivals,
            ),
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Consumer<EventsProvider>(
        builder: (context, object, child) {
          // getting the festivals
          final festivals = object.getFestivals;

          return festivals.isEmpty
              ? const Center(
                  child: Text('No festivals found!'),
                )
              : ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: festivals.length,
                  itemBuilder: (context, index) {
                    // getting the current event
                    final event = festivals[index];

                    // returning the event tile
                    return EventTile(event: event);
                  },
                );
        },
      ),
    );
  }
}
