import 'package:flutter/material.dart';

class Event {
  final UniqueKey key;
  final DateTime? day;
  final String title;
  final String description;
  final String imageUrl;
  final bool isFestival;

  // constructor
  const Event({
    required this.key,
    this.day,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isFestival,
  });
}
