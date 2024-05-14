import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get formattedDate => '$year-$month-$day';

  String appDateFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }
}
