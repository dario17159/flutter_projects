import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dayAndDate {
    DateFormat formatter = DateFormat('E d');
    return formatter.format(this);
  }

  String get formatToDDMMYYYY {
    final dateFormat = DateFormat('DD/MM/yyyy');

    return dateFormat.format(this);
  }
}
