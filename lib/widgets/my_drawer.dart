import 'package:flutter/material.dart';

// pages
import '../pages/pages.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                ),
                color: Theme.of(context).backgroundColor.withOpacity(.01),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.event_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('All events'),
            onTap: () => Navigator.pushNamed(
              context,
              AllEventsPage.routeName,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.schedule_outlined,
              color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('Scheduled events'),
            onTap: () => Navigator.pushNamed(
              context,
              ScheduledEventsPage.routeName,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.event_busy,
              color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('Non scheduled events'),
            onTap: () => Navigator.pushNamed(
              context,
              NonScheduledEventsPage.routeName,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.festival,
              color: Theme.of(context).iconTheme.color,
            ),
            title: const Text('Festivals'),
            onTap: () => Navigator.pushNamed(
              context,
              FestivalsPage.routeName,
            ),
          ),
        ],
      ),
    );
  }
}
