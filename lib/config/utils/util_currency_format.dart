import 'package:intl/intl.dart';

class UtilCurrencyFormat {
  String currency1(int value) {
    {
      return NumberFormat.currency(
              locale: 'id', decimalDigits: 0, symbol: 'Rp ')
          .format(value);
    }
  }
}
