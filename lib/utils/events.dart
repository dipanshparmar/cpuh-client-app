import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// temporary variables
const desc = 'This is a description for the event';
const defaultImageUrl = 'assets/images/default.png';

// ! Don't edit anything other than the events
// * Date format: year, month, day

List<Event> events = [
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (Old students)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 7, 30),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (New students)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 9, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (Old students)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 8, 1),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (New Students)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 9, 28),
  ),
  Event(
    key: UniqueKey(),
    title: 'Convocation',
    description: desc,
    imageUrl: 'assets/images/convocation.jpg',
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration for project (UG students final year)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 9, 17),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
    description: 'At the end of Unit 1 and Unit 2',
    imageUrl: defaultImageUrl,
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 11, 10),
  ),
  Event(
    key: UniqueKey(),
    title: 'University sports meet',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 11, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Final evaluation of project',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 11, 25),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2020, 12, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 1, 4),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 2, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major practical examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 3, 3),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of result',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration of students',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'commencement of classes',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 30, 19),
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project (Continued...)',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 4, 27),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
    description: 'At the end of the Unit 1 and Unit 2',
    imageUrl: defaultImageUrl,
  ),
  Event(
    key: UniqueKey(),
    title: 'Innovation Day (Final evaluation of project)',
    description: desc,
    imageUrl: defaultImageUrl,
  ),
  Event(
    key: UniqueKey(),
    title: 'Annual Cultural Festival - Annant',
    description: desc,
    imageUrl: 'assets/images/annant.jpg',
  ),
  Event(
    key: UniqueKey(),
    title: 'Major Practical examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 7, 14),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 7, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of Result',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Preparatory Classes for Remajor Examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 8, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor Examination',
    description: desc,
    imageUrl: defaultImageUrl,
    day: DateTime(2021, 8, 23),
  ),
];
