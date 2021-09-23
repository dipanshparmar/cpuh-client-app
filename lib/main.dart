import 'package:flutter/material.dart';

// pages
import './pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const HomePage(),
    );
  }
}
