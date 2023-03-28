import 'package:intl/intl.dart';

enum DayOfWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

/// Main class
class CalendarTime {
  late DateTime _date;

  // Get the dateTime object used by this CalendarTime
  DateTime get toDate => _date;

  /// Adds a duration to the current DateTime
  ///
  DateTime add(Duration duration) => _date.add(duration);

  /// Subtract a duration from the current DateTime
  ///
  DateTime subtract(Duration duration) => _date.subtract(duration);

  /// Returns this DateTime value in the local time zone.
  ///
  /// Returns [this] if it is already in the local time zone.
  ///
  DateTime get dateLocal => _date.toLocal();

  /// Specify the format for times when outputting
  /// Specify it as [DateFormat.<skeleton>]
  ///
  ///      ICU Name                   Skeleton
  ///      --------                   --------
  ///      DAY                          d
  ///      ABBR_WEEKDAY                 E
  ///      WEEKDAY                      EEEE
  ///      ABBR_STANDALONE_MONTH        LLL
  ///      STANDALONE_MONTH             LLLL
  ///      NUM_MONTH                    M
  ///      NUM_MONTH_DAY                Md
  ///      NUM_MONTH_WEEKDAY_DAY        MEd
  ///      ABBR_MONTH                   MMM
  ///      ABBR_MONTH_DAY               MMMd
  ///      ABBR_MONTH_WEEKDAY_DAY       MMMEd
  ///      MONTH                        MMMM
  ///      MONTH_DAY                    MMMMd
  ///      MONTH_WEEKDAY_DAY            MMMMEEEEd
  ///      ABBR_QUARTER                 QQQ
  ///      QUARTER                      QQQQ
  ///      YEAR                         y
  ///      YEAR_NUM_MONTH               yM
  ///      YEAR_NUM_MONTH_DAY           yMd
  ///      YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
  ///      YEAR_ABBR_MONTH              yMMM
  ///      YEAR_ABBR_MONTH_DAY          yMMMd
  ///      YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
  ///      YEAR_MONTH                   yMMMM
  ///      YEAR_MONTH_DAY               yMMMMd
  ///      YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
  ///      YEAR_ABBR_QUARTER            yQQQ
  ///      YEAR_QUARTER                 yQQQQ
  ///      HOUR24                       H
  ///      HOUR24_MINUTE                Hm
  ///      HOUR24_MINUTE_SECOND         Hms
  ///      HOUR                         j
  ///      HOUR_MINUTE                  jm
  ///      HOUR_MINUTE_SECOND           jms
  ///      HOUR_MINUTE_GENERIC_TZ       jmv
  ///      HOUR_MINUTE_TZ               jmz
  ///      HOUR_GENERIC_TZ              jv
  ///      HOUR_TZ                      jz
  ///      MINUTE                       m
  ///      MINUTE_SECOND                ms
  ///      SECOND                       s
  DateFormat timeFormat = DateFormat.jm();

  /// Specify the format used for the date portion of any formatting
  /// Use the format [DateFormat.<skeleton>]
  ///
  ///      ICU Name                   Skeleton
  ///      --------                   --------
  ///      DAY                          d
  ///      ABBR_WEEKDAY                 E
  ///      WEEKDAY                      EEEE
  ///      ABBR_STANDALONE_MONTH        LLL
  ///      STANDALONE_MONTH             LLLL
  ///      NUM_MONTH                    M
  ///      NUM_MONTH_DAY                Md
  ///      NUM_MONTH_WEEKDAY_DAY        MEd
  ///      ABBR_MONTH                   MMM
  ///      ABBR_MONTH_DAY               MMMd
  ///      ABBR_MONTH_WEEKDAY_DAY       MMMEd
  ///      MONTH                        MMMM
  ///      MONTH_DAY                    MMMMd
  ///      MONTH_WEEKDAY_DAY            MMMMEEEEd
  ///      ABBR_QUARTER                 QQQ
  ///      QUARTER                      QQQQ
  ///      YEAR                         y
  ///      YEAR_NUM_MONTH               yM
  ///      YEAR_NUM_MONTH_DAY           yMd
  ///      YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
  ///      YEAR_ABBR_MONTH              yMMM
  ///      YEAR_ABBR_MONTH_DAY          yMMMd
  ///      YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
  ///      YEAR_MONTH                   yMMMM
  ///      YEAR_MONTH_DAY               yMMMMd
  ///      YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
  ///      YEAR_ABBR_QUARTER            yQQQ
  ///      YEAR_QUARTER                 yQQQQ
  ///      HOUR24                       H
  ///      HOUR24_MINUTE                Hm
  ///      HOUR24_MINUTE_SECOND         Hms
  ///      HOUR                         j
  ///      HOUR_MINUTE                  jm
  ///      HOUR_MINUTE_SECOND           jms
  ///      HOUR_MINUTE_GENERIC_TZ       jmv
  ///      HOUR_MINUTE_TZ               jmz
  ///      HOUR_GENERIC_TZ              jv
  ///      HOUR_TZ                      jz
  ///      MINUTE                       m
  ///      MINUTE_SECOND                ms
  ///      SECOND                       s
  DateFormat dayFormat = DateFormat.EEEE();

  /// Specify the format when outputting a full date
  /// Use the format [DateFormat.<skeleton>]
  ///
  ///      ICU Name                   Skeleton
  ///      --------                   --------
  ///      DAY                          d
  ///      ABBR_WEEKDAY                 E
  ///      WEEKDAY                      EEEE
  ///      ABBR_STANDALONE_MONTH        LLL
  ///      STANDALONE_MONTH             LLLL
  ///      NUM_MONTH                    M
  ///      NUM_MONTH_DAY                Md
  ///      NUM_MONTH_WEEKDAY_DAY        MEd
  ///      ABBR_MONTH                   MMM
  ///      ABBR_MONTH_DAY               MMMd
  ///      ABBR_MONTH_WEEKDAY_DAY       MMMEd
  ///      MONTH                        MMMM
  ///      MONTH_DAY                    MMMMd
  ///      MONTH_WEEKDAY_DAY            MMMMEEEEd
  ///      ABBR_QUARTER                 QQQ
  ///      QUARTER                      QQQQ
  ///      YEAR                         y
  ///      YEAR_NUM_MONTH               yM
  ///      YEAR_NUM_MONTH_DAY           yMd
  ///      YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
  ///      YEAR_ABBR_MONTH              yMMM
  ///      YEAR_ABBR_MONTH_DAY          yMMMd
  ///      YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
  ///      YEAR_MONTH                   yMMMM
  ///      YEAR_MONTH_DAY               yMMMMd
  ///      YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
  ///      YEAR_ABBR_QUARTER            yQQQ
  ///      YEAR_QUARTER                 yQQQQ
  ///      HOUR24                       H
  ///      HOUR24_MINUTE                Hm
  ///      HOUR24_MINUTE_SECOND         Hms
  ///      HOUR                         j
  ///      HOUR_MINUTE                  jm
  ///      HOUR_MINUTE_SECOND           jms
  ///      HOUR_MINUTE_GENERIC_TZ       jmv
  ///      HOUR_MINUTE_TZ               jmz
  ///      HOUR_GENERIC_TZ              jv
  ///      HOUR_TZ                      jz
  ///      MINUTE                       m
  ///      MINUTE_SECOND                ms
  ///      SECOND                       s
  DateFormat fullDayFormat = DateFormat.yMMMEd().add_jm();

  /// Create a calendar time object by passing in a date
  /// Not passing in a date will create a CalendarTime at the present date
  ///
  CalendarTime([_date]) {
    this._date = _date ??= DateTime.now();
  }

  /// Convert the date into a human readable representation of a time
  /// For example if a datetime is today at 4:30 it will return "Today at 4:30pm"
  ///
  String get toHuman {
    final String time = formatTime;
    final String day = dayFormat.format(dateLocal);
    final String fullDate = DateFormat.yMMMEd().format(dateLocal);
    final String fullTime = DateFormat.jm().format(dateLocal);
    final String fullDateTime = "$fullDate $fullTime";

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

  /// Will return the date in format specified in [CalendarTime.timeformat]
  ///
  String get formatTime {
    return timeFormat.format(dateLocal);
  }

  /// Format the date in a string given a format string.
  ///
  /// Explicit Pattern Syntax: Formats can also be specified with a pattern
  /// string.  This can be used for formats that don't have a skeleton available,
  /// but these will not adapt to different locales. For example, in an explicit
  /// pattern the letters 'H' and 'h' are available for 24 hour and 12 hour time
  /// formats respectively. But there isn't a way in an explicit pattern to get
  /// the behaviour of the 'j' skeleton, which prints 24 hour or 12 hour time
  /// according to the conventions of the locale, and also includes am/pm markers
  /// where appropriate. So it is preferable to use the skeletons.
  ///
  /// The following characters are available in explicit patterns:
  ///
  ///     Symbol   Meaning                Presentation       Example
  ///     ------   -------                ------------       -------
  ///     G        era designator         (Text)             AD
  ///     y        year                   (Number)           1996
  ///     M        month in year          (Text & Number)    July & 07
  ///     L        standalone month       (Text & Number)    July & 07
  ///     d        day in month           (Number)           10
  ///     c        standalone day         (Number)           10
  ///     h        hour in am/pm (1~12)   (Number)           12
  ///     H        hour in day (0~23)     (Number)           0
  ///     m        minute in hour         (Number)           30
  ///     s        second in minute       (Number)           55
  ///     S        fractional second      (Number)           978
  ///     E        day of week            (Text)             Tuesday
  ///     D        day in year            (Number)           189
  ///     a        am/pm marker           (Text)             PM
  ///     k        hour in day (1~24)     (Number)           24
  ///     K        hour in am/pm (0~11)   (Number)           0
  ///     z        time zone              (Text)             Pacific Standard Time
  ///     Z        time zone (RFC 822)    (Number)           -0800
  ///     v        time zone (generic)    (Text)             Pacific Time
  ///     Q        quarter                (Text)             Q3
  ///     '        escape for text        (Delimiter)        'Date='
  ///     ''       single quote           (Literal)          'o''clock'
  ///
  /// The count of pattern letters determine the format.
  ///
  /// **Text**:
  /// * 5 pattern letters--use narrow form for standalone. Otherwise not used.
  /// * 4 or more pattern letters--use full form,
  /// * 3 pattern letters--use short or abbreviated form if one exists
  /// * less than 3--use numeric form if one exists
  ///
  /// **Number**: the minimum number of digits. Shorter numbers are zero-padded to
  /// this amount (e.g. if 'm' produces '6', 'mm' produces '06'). Year is handled
  /// specially; that is, if the count of 'y' is 2, the Year will be truncated to
  /// 2 digits. (e.g., if 'yyyy' produces '1997', 'yy' produces '97'.) Unlike
  /// other fields, fractional seconds are padded on the right with zero.
  ///
  /// **(Text & Number)**: 3 or over, use text, otherwise use number.
  ///
  /// Any characters not in the pattern will be treated as quoted text. For
  /// instance, characters like ':', '.', ' ', '#' and '@' will appear in the
  /// resulting text even though they are not enclosed in single quotes. In our
  /// current pattern usage, not all letters have meanings. But those unused
  /// letters are strongly discouraged to be used as quoted text without quotes,
  /// because we may use other letters as pattern characters in the future.
  ///
  /// Examples Using the US Locale:
  ///
  ///     Format Pattern                    Result
  ///     --------------                    -------
  ///     'yyyy.MM.dd G 'at' HH:mm:ss vvvv' 1996.07.10 AD at 15:08:56 Pacific Time
  ///     'EEE, MMM d, ''yy'                Wed, Jul 10, '96
  ///     'h:mm a'                          12:08 PM
  ///     'hh 'o''clock' a, zzzz'           12 o'clock PM, Pacific Daylight Time
  ///     'K:mm a, vvv'                     0:00 PM, PT
  ///     'yyyyy.MMMMM.dd GGG hh:mm aaa'    01996.July.10 AD 12:08 PM
  ///
  /// When parsing a date string using the abbreviated year pattern ('yy'),
  /// DateFormat must interpret the abbreviated year relative to some
  /// century. It does this by adjusting dates to be within 80 years before and 20
  /// years after the time the parse function is called. For example, using a
  /// pattern of 'MM/dd/yy' and a DateParse instance created on Jan 1, 1997,
  /// the string '01/11/12' would be interpreted as Jan 11, 2012 while the string
  /// '05/04/64' would be interpreted as May 4, 1964. During parsing, only
  /// strings consisting of exactly two digits will be parsed into the default
  /// century. Any other numeric string, such as a one digit string, a three or
  /// more digit string will be interpreted as its face value.
  ///
  /// If the year pattern does not have exactly two 'y' characters, the year is
  /// interpreted literally, regardless of the number of digits. So using the
  /// pattern 'MM/dd/yyyy', '01/11/12' parses to Jan 11, 12 A.D.
  String format(String formatString) {
    return DateFormat(formatString).format(dateLocal);
  }

  ///The same as calling [toHuman] except it breaks down the result into multiple
  ///lines for a vertical display
  ///
  /// ie. `Today at 4:30pm` is formatted as
  ///
  /// Today
  ///  at
  /// 4:30pm
  String get toHumanMultiLine {
    return toHuman.split(" at ").join("\n");
  }

  ///The same as calling [toHuman] except it breaks down the result into array
  ///[0] is date, [1] is time
  List<String> get toHumanArray {
    return toHuman.split(" at ");
  }

  /// Boolean check to see if the current date is today
  ///
  bool get isToday {
    if (dateLocal.isAfter(startOfToday) && dateLocal.isBefore(endOfToday)) {
      return true;
    }
    return false;
  }

  /// Boolean to check if the current date is tomororw
  ///
  bool get isTomorrow {
    if (dateLocal.isAfter(endOfToday) && dateLocal.isBefore(endOfTomorrow)) {
      return true;
    }
    return false;
  }

  /// Boolean check to see if the current date is next week
  ///
  bool get isNextWeek {
    if (dateLocal.isAfter(endOfToday) && dateLocal.isBefore(endOfNextWeek)) {
      return true;
    }
    return false;
  }

  /// Boolean check to see if the current date is yesterday
  ///
  bool get isYesterday {
    if (dateLocal.isAfter(startOfYesterday) &&
        dateLocal.isBefore(startOfToday)) {
      return true;
    }
    return false;
  }

  /// Boolean check to see if the current date is last week
  bool get isLastWeek {
    if (dateLocal.isAfter(startOfLastWeek) &&
        dateLocal.isBefore(startOfYesterday)) {
      return true;
    }
    return false;
  }

  /// Get the [DateTime] at the start of today.
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  ///
  /// ie. set the current date to 12:00am
  DateTime get startOfToday =>
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  /// Get the [DateTime] at the start of the calendar time day
  /// note this is based on the time time passeed into [CalendarTime]
  /// If you want the start of today object use [startOfToday]
  ///
  /// ie. set the current date to 12:00am
  DateTime get startOfDay => DateTime(_date.year, _date.month, _date.day);

  /// Get the time at the start of yesterday
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  ///
  DateTime get startOfYesterday => startOfToday.subtract(Duration(days: 1));

  /// Get the time at the start of last week
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  ///
  DateTime get startOfLastWeek => startOfToday.subtract(Duration(days: 7));

  /// Get the date at the start of the week based on the [weekDayStart]
  /// this is based on the time passed into CalendarTime.
  ///
  /// To work out the right value to pass in, use DateTime.<weekday> ie DateTime.tuesday
  /// it defaults to monday
  DateTime startOfWeek({int weekDayStart = DateTime.monday}) {
    var difference = dateLocal.weekday - weekDayStart;
    // if difference is negative, add 7 to make it positive
    if (difference < 0) {
      difference += 7;
    }
    return startOfDay.subtract(Duration(days: difference));
  }

  /// Get the date at the end of the week based on the [weekDayStart]
  /// this is based on the time passed into CalendarTime.
  ///
  /// To work out the right value to pass in, use DateTime.<weekday> ie DateTime.tuesday
  /// it defaults to monday
  DateTime endOfWeek({int weekDayStart = DateTime.monday}) {
    final startOfWeek = this.startOfWeek(weekDayStart: weekDayStart);
    return CalendarTime(startOfWeek.add(Duration(days: 6))).endOfDay;
  }

  // /// Get the time at the start of this week beginning Sunday
  // ///
  // DateTime get startOfWeekSunday =>
  //     startOfDay.subtract(Duration(days: dateLocal.weekday - 1));
  //
  // /// Get the time at the start of this week beginning Monday
  // ///
  // DateTime get startOfWeekMonday =>
  //     startOfDay.subtract(Duration(days: dateLocal.weekday));

  /// Get the time at the end of this week ending Saturday night / Sunday morning
  ///
  DateTime get endOfWeekSunday => endOfDay
      .subtract(Duration(days: dateLocal.weekday - 1))
      .add(Duration(days: 6));

  /// Get the time at the end of this week ending Sunday night / Monday morning
  ///
  DateTime get endOfWeekMonday => endOfDay
      .subtract(Duration(days: dateLocal.weekday))
      .add(Duration(days: 6));

  /// Get the time at the end of today,
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  /// If you want the end of the day of the CalendarTime object, use [endOfDay]
  ///
  DateTime get endOfToday => DateTime(DateTime.now().year, DateTime.now().month,
      DateTime.now().day, 23, 59, 59, 999, 999);

  /// Get the time at the end of the day given to the CalendarTime obejct
  ///
  DateTime get endOfDay =>
      DateTime(_date.year, _date.month, _date.day, 23, 59, 59, 999, 999);

  /// Get the time at the end of tomorrow
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  ///
  DateTime get endOfTomorrow => endOfToday.add(Duration(days: 1));

  /// Get the time at the end of next week
  /// note this is based on the current time, not the time passed into the [CalendarTime]
  ///
  DateTime get endOfNextWeek => endOfToday.add(Duration(days: 7));

  /// Generate a CalendarTime object from a string with a custom format
  ///
  /// You can specify the date format using the intl skeleton as per below
  ///
  /// Example usage
  /// ```dart
  /// CalendarTime.fromString("4/4/02 11:14am", "d/M/yy j:ma")
  ///
  /// Skeletons: These can be specified either as the ICU constant name or as the
  /// skeleton to which it resolves. The supported set of skeletons is as follows.
  /// For each skeleton there is a named constructor that can be used to create
  /// it.  It's also possible to pass the skeleton as a string, but the
  /// constructor is preferred.
  ///
  ///      ICU Name                   Skeleton
  ///      --------                   --------
  ///      DAY                          d
  ///      ABBR_WEEKDAY                 E
  ///      WEEKDAY                      EEEE
  ///      ABBR_STANDALONE_MONTH        LLL
  ///      STANDALONE_MONTH             LLLL
  ///      NUM_MONTH                    M
  ///      NUM_MONTH_DAY                Md
  ///      NUM_MONTH_WEEKDAY_DAY        MEd
  ///      ABBR_MONTH                   MMM
  ///      ABBR_MONTH_DAY               MMMd
  ///      ABBR_MONTH_WEEKDAY_DAY       MMMEd
  ///      MONTH                        MMMM
  ///      MONTH_DAY                    MMMMd
  ///      MONTH_WEEKDAY_DAY            MMMMEEEEd
  ///      ABBR_QUARTER                 QQQ
  ///      QUARTER                      QQQQ
  ///      YEAR                         y
  ///      YEAR_NUM_MONTH               yM
  ///      YEAR_NUM_MONTH_DAY           yMd
  ///      YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
  ///      YEAR_ABBR_MONTH              yMMM
  ///      YEAR_ABBR_MONTH_DAY          yMMMd
  ///      YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
  ///      YEAR_MONTH                   yMMMM
  ///      YEAR_MONTH_DAY               yMMMMd
  ///      YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
  ///      YEAR_ABBR_QUARTER            yQQQ
  ///      YEAR_QUARTER                 yQQQQ
  ///      HOUR24                       H
  ///      HOUR24_MINUTE                Hm
  ///      HOUR24_MINUTE_SECOND         Hms
  ///      HOUR                         j
  ///      HOUR_MINUTE                  jm
  ///      HOUR_MINUTE_SECOND           jms
  ///      HOUR_MINUTE_GENERIC_TZ       jmv
  ///      HOUR_MINUTE_TZ               jmz
  ///      HOUR_GENERIC_TZ              jv
  ///      HOUR_TZ                      jz
  ///      MINUTE                       m
  ///      MINUTE_SECOND                ms
  ///      SECOND                       s
  factory CalendarTime.fromString(String input,
      [String? pattern, String? locale]) {
    final format = DateFormat(pattern, locale);
    final dateTime = format.parse(input);
    return CalendarTime(dateTime);
  }

  bool isSameDayAs(DateTime comparisonDate) {
    return (_date.toLocal()).toLocal().year ==
            (comparisonDate.toLocal()).year &&
        (_date.toLocal()).month == (comparisonDate.toLocal()).month &&
        (_date.toLocal()).day == (comparisonDate.toLocal()).day;
  }
}
