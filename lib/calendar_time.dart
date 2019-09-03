import 'package:intl/intl.dart';

class CalendarTime {
  final DateTime date;

  DateTime get dateLocal => date.toLocal();

  /// Used to inject tests and manipulate date
  DateTime now = DateTime.now();
  DateFormat timeFormat = DateFormat.jm();
  DateFormat dayFormat = DateFormat.EEEE();
  DateFormat fullDayFormat = DateFormat.yMMMEd().add_jm();

  CalendarTime(this.date);

  String get toHuman {
    final String time = formatTime;
    final String day = dayFormat.format(dateLocal);
    final String fullDate = DateFormat.yMMMEd().format(dateLocal);
    final String fullTime = DateFormat.jm().format(dateLocal);
    final String fullDateTime = "$fullDate\n$fullTime";

    if (isToday) {
      return 'Today at $time';
    } else if (isTomorrow) {
      return 'Tomorrow at $time';
    } else if (isNextWeek) {
      return '$day at $time';
    } else if (isYesterday) {
      return 'Yesterday at $time';
    } else if (isLastWeek) {
      return 'Last $day at $time';
    } else {
      return fullDateTime;
    }
  }

  String get formatTime {
    return timeFormat.format(dateLocal);
  }

  String format(String formatString) {
    return DateFormat(formatString).format(dateLocal);
  }

  String get toHumanMultiLine {
    return this.toHuman.split(" at ").join("\n");
  }

  bool get isToday {
    if (dateLocal.isAfter(startOfToday()) && dateLocal.isBefore(endOfToday())) {
      return true;
    }
    return false;
  }

  bool get isTomorrow {
    if (dateLocal.isAfter(endOfToday()) &&
        dateLocal.isBefore(endOfTomorrow())) {
      return true;
    }
    return false;
  }

  bool get isNextWeek {
    if (dateLocal.isAfter(endOfToday()) &&
        dateLocal.isBefore(endOfNextWeek())) {
      return true;
    }
    return false;
  }

  bool get isYesterday {
    if (dateLocal.isAfter(startOfYesterday()) &&
        dateLocal.isBefore(startOfToday())) {
      return true;
    }
    return false;
  }

  bool get isLastWeek {
    if (dateLocal.isAfter(startOfLastWeek()) &&
        dateLocal.isBefore(startOfYesterday())) {
      return true;
    }
    return false;
  }

  DateTime startOfToday() {
    return DateTime(now.year, now.month, now.day);
  }

  DateTime startOfYesterday() {
    return startOfToday().subtract(Duration(days: 1));
  }

  DateTime startOfLastWeek() {
    return startOfToday().subtract(Duration(days: 7));
  }

  DateTime endOfToday() {
    return DateTime(now.year, now.month, now.day, 23, 59, 59, 999, 999);
  }

  DateTime endOfTomorrow() {
    return endOfToday().add(Duration(days: 1));
  }

  DateTime endOfNextWeek() {
    return endOfToday().add(Duration(days: 7));
  }
}
