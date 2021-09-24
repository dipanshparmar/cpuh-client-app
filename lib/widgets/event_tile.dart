import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// pages
import '../pages/pages.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    Key? key,
    required this.event,
    this.leading = false,
  }) : super(key: key);

  final Event event;
  final bool leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading
          ? SizedBox(
              height: double.infinity,
              child: Icon(
                Icons.circle,
                size: 6,
                color: Theme.of(context).iconTheme.color,
              ),
            )
          : null,
      title: Text(event.title),
      subtitle: Text(
        event.description,
        style: const TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
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
  }
}
