import 'dart:ffi';

import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get humanReadableNumber {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: ''
    ).format(this);

    return formatterNumber;
  }
}
