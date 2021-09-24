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
          colorScheme: const ColorScheme.light().copyWith(
            secondary: Colors.teal,
          ),
          primaryColor: Colors.white,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.black,
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.teal,
          ),
        ),

        // dark theme
        darkTheme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0B0F12),
          colorScheme: const ColorScheme.dark().copyWith(
            secondary: Colors.teal,
          ),
          primaryColor: Colors.black,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.white,
          textSelectionTheme: const TextSelectionThemeData(
            selectionHandleColor: Colors.teal,
          ),
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
