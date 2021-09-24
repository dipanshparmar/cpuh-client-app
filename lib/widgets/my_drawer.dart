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
        ],
      ),
    );
  }
}
