import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// models
import '../models/models.dart';

// pages
import '../pages/pages.dart';

class EventTile extends StatelessWidget {
  const EventTile({
    Key? key,
    required this.event,
    this.leading = false,
    this.showDate = true,
  }) : super(key: key);

  final Event event;
  final bool leading;
  final bool showDate;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Theme.of(context).primaryColor,
            content: Text(
              event.title,
              style: TextStyle(color: Theme.of(context).backgroundColor),
            ),
            action: SnackBarAction(
              label: 'Close',
              textColor: Theme.of(context).colorScheme.secondary,
              onPressed: () {
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
              },
            ),
          ),
        );
      },
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
          if (showDate) const SizedBox(width: 10),
          if (showDate && event.day != null)
            Text(
              DateFormat.yMd().format(event.day!),
            ) // if date is not null then show the date, else show nothing
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
  }
}
