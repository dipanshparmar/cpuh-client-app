import 'package:flutter/material.dart';

// widgets
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Calendar',
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Theme.of(context).iconTheme.color,
            tooltip: 'Search events',
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Calendar(),
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
          Expanded(
            child: Center(
              child: Text('no events yet'),
            ),
          )
        ],
      ),
    );
  }
}
