import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// pages
import './pages/pages.dart';

// providers
import './providers/providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EventsProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system, // get the system's theme mode

        // light theme
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF2F2F2),
          colorScheme: const ColorScheme.light(),
          primaryColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.black,
        ),

        // dark theme
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0B0F12),
          colorScheme: const ColorScheme.dark(),
          primaryColor: Colors.black,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.white,
        ),

        // home page
        home: const HomePage(),

        // reoutes
        routes: {
          EventPage.routeName: (context) => const EventPage(),
          SearchPage.routeName: (context) => const SearchPage(),
        },
      ),
    );
  }
}
