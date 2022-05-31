import 'package:cpuh_academic_calendar/providers/events_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// widgets
import '../widgets/widgets.dart';

// pages
import '../pages/pages.dart';

// utils
import '../utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // fetching the events
    Provider.of<EventsProvider>(context, listen: false).fetchEvents(context);
  }

  @override
  Widget build(BuildContext context) {
    // getting the height of the device
    final height = MediaQuery.of(context).size.height;

    // getting the provider
    final eventsProvider = Provider.of<EventsProvider>(context, listen: false);

    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).iconTheme.color),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Calendar',
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        actions: [
          RefreshIcon(eventsProvider: eventsProvider),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.pushNamed(
              context,
              SearchPage.routeName,
              arguments: SearchType.allEvents,
            ),
            color: Theme.of(context).iconTheme.color,
            tooltip: 'Search events',
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Calendar(),
          if (height > 600)
            Expanded(
              child: _buildEvents(),
            ),
        ],
      ),
    );
  }

  // method to build events
  Widget _buildEvents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
          child: Text(
            'Events',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: EventsForTheDay(),
        )
      ],
    );
  }
}

class RefreshIcon extends StatefulWidget {
  const RefreshIcon({
    Key? key,
    required this.eventsProvider,
  }) : super(key: key);

  final EventsProvider eventsProvider;

  @override
  State<RefreshIcon> createState() => _RefreshIconState();
}

class _RefreshIconState extends State<RefreshIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween<double>(begin: 0, end: 1).animate(_controller),
      child: IconButton(
        icon: const Icon(Icons.refresh),
        onPressed: () {
          // looping the icon
          _controller.repeat();

          // fetching the events
          widget.eventsProvider.fetchEvents(context).whenComplete(() {
            // stop the animation
            _controller.reset();
          });
        },
      ),
    );
  }
}
