import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String toHumanFormat({int decimals = 0}) => NumberFormat.compactCurrency(
          decimalDigits: decimals, symbol: '', locale: 'en')
      .format(this);
}
