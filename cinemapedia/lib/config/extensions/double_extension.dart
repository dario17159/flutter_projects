import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String get toHumanFormat =>
      NumberFormat.compactCurrency(decimalDigits: 0, symbol: '', locale: 'en')
          .format(this);
}
