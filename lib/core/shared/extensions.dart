import 'package:intl/intl.dart';

extension FormatX on DateTime {
  String format() => DateFormat("MM-dd-y hh:ss").format(this);
}

extension DateX on String {
  DateTime toDate() => DateTime.parse(this);
}

extension DateIntX on int {
  DateTime toDate() => DateTime.fromMillisecondsSinceEpoch(this);
}

extension DoubleX on String {
  double toDouble() => double.parse(this);
}

extension Boolx on bool {
  int toInt() => this ? 1 : 0;
}
