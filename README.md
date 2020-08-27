# calendar_time

Implementation of MomentJS's calendarTime function and some other helpful utilities.

I expect this project will get replaced with another more ambitious project in the future, but this has come in very handy. Extensions and pull requests welcome.

## Usage

### toHuman
Converting a DateTime to a human readable string
```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  CalendarTime(DateTime.now()).toHuman; //Today at {current time}
}
```

Example output:

- Today at {current time}
- Tomorrow at {time}
- Yesterday at {time}
- {day} at {time}
- Last {day} at {time}
- date time (outside of the last or upcoming few weeks)

Honestly just check the code, but it is in line with Moment's logic.

You can also call `.toHumanMultiLine` that splits the output around at to have date and time on different lines.

### format

Formats to current timezone 

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  CalendarTime(DateTime.now()).format("yyyy-MM-dd HH:mm");
}
```

See https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html for options.

### isToday

Return if the supplied DateTime is today

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.isToday; //true
}
```

### isTomorrow

Return if the supplied DateTime is tomorrow

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.isTomorrow; //false
}
```

### isNextWeek

Return if the supplied DateTime is next week

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.isNextWeek; //false
}
```

### isYesterday

Return if the supplied DateTime is yesterday

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.isYesterday; //false
}
```

### isLastweek

Return if the supplied DateTime is last week

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.isLastWeek; //false
}
```

### startOfToday

Return the beginning of today - not to be confused with `startOfDay`

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.startOfToday; // DateTime
}
```

### startOfDay

Return the beginning of the day of the CalendarTime obejct.

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime(2020,1,1));
  calendarTime.startOfDay; // 2020/01/01 0:0:0am
}
```

### startOfYesterday

Return the beginning of yesterday

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.startOfYesterday; // DateTime start of yesterday
}
```

### startOfLastWeek

Return the beginning of lastWeek

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.startOfLastWeek; // DateTime start of yesterday
}
```

### endOfToday

Return the end of today (23:59:59:999:999) - not to be confused with endOfDay

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.endOfToday; // DateTime
}
```

### endOfDay

Return the end of the day of the CalendarTime object (23:59:59:999:999)

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime(2020, 1,1));
  calendarTime.endOfToday; // 2020/01/01 23:59:59:999:999
}
```

### endOfTomorrow

Return the end of tomorrow

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.endOfTomorrow; // DateTime
}
```

### endOfNextWeek

Return the end of next week

```dart
import 'package:calendar_time/calendar_time.dart';

main(){
  final calendarTime = CalendarTime(DateTime.now());
  calendarTime.endOfNextWeek; // DateTime
}
```