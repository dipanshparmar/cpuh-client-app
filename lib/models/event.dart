import 'package:flutter/material.dart';

class Event {
  final UniqueKey key;
  final DateTime day;
  final String title;
  final String description;

  // constructor
  const Event({
    required this.key,
    required this.day,
    required this.title,
    required this.description,
  });
}
