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
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              event.description,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
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
