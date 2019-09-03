import 'package:calendar_time/calendar_time.dart';
import 'package:test/test.dart';

void main() {
  test('converts time to human value', () {
    final calendarTime = CalendarTime(DateTime.now());
    expect(calendarTime.toHuman.contains('Today'), true);
  });

  test('it should format a date', () {
    final calendarTime = CalendarTime(DateTime(2010, 1, 1));
    expect(calendarTime.format('dd/MM/yy'), "01/01/10");
  });
}
