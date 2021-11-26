import 'package:flutter/material.dart';

// models
import '../models/models.dart';

// ! Don't edit anything other than the events
// * Date format: year, month, day

List<Event> events = [
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (Old students)',
    day: DateTime(2020, 7, 30),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration/Orientation (New students)',
    day: DateTime(2020, 9, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (Old students)',
    day: DateTime(2020, 8, 1),
  ),
  Event(
    key: UniqueKey(),
    title: 'Commencement of Classes (New Students)',
    day: DateTime(2020, 9, 28),
  ),
  Event(
    key: UniqueKey(),
    title: 'Convocation',
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration for project (UG students final year)',
    day: DateTime(2020, 9, 17),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project',
    day: DateTime(2020, 11, 10),
  ),
  Event(
    key: UniqueKey(),
    title: 'University sports meet',
    day: DateTime(2020, 11, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Final evaluation of project',
    day: DateTime(2020, 11, 25),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor examination',
    day: DateTime(2020, 12, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    day: DateTime(2021, 1, 4),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    day: DateTime(2021, 2, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major practical examination',
    day: DateTime(2021, 3, 3),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of result',
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'Registration of students',
    day: DateTime(2021, 3, 18),
  ),
  Event(
    key: UniqueKey(),
    title: 'commencement of classes',
    day: DateTime(2021, 30, 19),
  ),
  Event(
    key: UniqueKey(),
    title: 'Department wise evaluation of project (Continued...)',
    day: DateTime(2021, 4, 27),
  ),
  Event(
    key: UniqueKey(),
    title: 'Two unit tests',
  ),
  Event(
    key: UniqueKey(),
    title: 'Innovation Day (Final evaluation of project)',
  ),
  Event(
    key: UniqueKey(),
    title: 'Annual Cultural Festival - Annant',
  ),
  Event(
    key: UniqueKey(),
    title: 'Major Practical examination',
    day: DateTime(2021, 7, 14),
  ),
  Event(
    key: UniqueKey(),
    title: 'Major theory examination',
    day: DateTime(2021, 7, 20),
  ),
  Event(
    key: UniqueKey(),
    title: 'Declaration of Result',
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Semester break',
    day: DateTime(2021, 8, 11),
  ),
  Event(
    key: UniqueKey(),
    title: 'Preparatory Classes for Remajor Examination',
    day: DateTime(2021, 8, 16),
  ),
  Event(
    key: UniqueKey(),
    title: 'Remajor Examination',
    day: DateTime(2021, 8, 23),
  ),
  Event(
    key: UniqueKey(),
    title: 'Lohri',
    day: DateTime(2021, 1, 13),
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'NSCB jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Republic day',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Basant panchmi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Ravi Das jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Mahashivratri',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Holi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Dhulendi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Good Friday',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Baisakhi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Ambedkar jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Ram Navmi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Mahavir jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Hanuman jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Id-ul-fitr',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Budh purnima',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Id ul zuha',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Independance day',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Muharam',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Raksha bandhan',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Janmashtami',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Ganesh chatutarthi',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Anant Chaudash',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Gandhi jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Dusshera',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Id-e-milad',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Balmiki jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Diwali',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Goverdhan pooja',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Bhai dooj',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Chhath pooja',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Guru Nanak jayanti',
    isFestival: true,
  ),
  Event(
    key: UniqueKey(),
    title: 'Christmas',
    isFestival: true,
  ),
];
