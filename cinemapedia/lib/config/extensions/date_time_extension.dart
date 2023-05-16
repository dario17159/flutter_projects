import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dayAndDate {
    DateFormat formatter = DateFormat('E d');
    return formatter.format(this);
  }
}
