import 'package:flutter/material.dart';

// utils
import '../utils/semester.dart';

class Event {
  final UniqueKey key;
  final DateTime? day;
  final String title;
  final String description;
  final String imageUrl;
  final Semester semester;

  // constructor
  const Event({
    required this.key,
    this.day,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.semester,
  });
}
