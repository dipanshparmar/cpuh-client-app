import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// current year
final _currentYear = DateTime.now().year;

final events = [
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'hello',
    description:
        'This is a text description. long long description to test the boundaries. Making it more long now to test everything',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 25),
    title: 'test',
    description: 'this is a demo description',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 26),
    title: 'test',
    description: 'this is also a demo description now',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 26),
    title: 'same',
    description:
        'this is also a demo description now for the second event on the same day',
  ),
];
