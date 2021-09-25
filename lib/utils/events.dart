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
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'test',
    description: 'this is a demo description',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'test',
    description: 'this is a demo description',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'test',
    description: 'this is a demo description',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'test',
    description: 'this is a demo description',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 15),
    title: 'test',
    description: 'this is also a demo description now',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    day: DateTime(_currentYear, 9, 26),
    title: 'same',
    description:
        'this is also a demo description now for the second event on the same day',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
  Event(
    key: UniqueKey(),
    title: 'Null test',
    description: 'This is just a null test',
    imageUrl:
        'https://images.unsplash.com/20/cambridge.JPG?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dW5pdmVyc2l0eXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
  ),
];
