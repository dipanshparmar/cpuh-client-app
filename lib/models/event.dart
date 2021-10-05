import 'package:flutter/material.dart';

class Event {
  final UniqueKey key;
  final DateTime? day;
  final String title;
  final String description;
  final String imageUrl;

  // constructor
  const Event({
    required this.key,
    this.day,
    required this.title,
    this.description = 'This event has no description',
    this.imageUrl = 'assets/images/default.png',
  });
}
