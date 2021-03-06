import 'package:calendar_time/calendar_time.dart';
import 'package:test/test.dart';

void main() {
  test('converts time to human value', () {
    final calendarTime = CalendarTime(DateTime.now());
    expect(calendarTime.toHuman.contains('Today'), true);
  });

  test('converts time to human value as a single line', () {
    final calendarTime = CalendarTime(DateTime(2010, 10, 10));
    expect(calendarTime.toHuman.contains("\n"), false);
  });

  test('it should format a date', () {
    final calendarTime = CalendarTime(DateTime(2010, 1, 1));
    expect(calendarTime.format('dd/MM/yy'), "01/01/10");
  });

  test("it should generate a time from a string", () {
    CalendarTime.fromString("4/4/20", "d/M/y");
    CalendarTime.fromString("20/12/20", "d/M/y");
    CalendarTime.fromString("09/08/2020 4:20 PM", "dd/MM/yyyy h:mm a");
  });

  test("it should handle isSameDayAs", () {
    expect(
        CalendarTime(DateTime(2010, 01, 01, 15))
            .isSameDayAs(DateTime(2010, 01, 01, 3)),
        true);
    expect(
        CalendarTime(DateTime(2010, 12, 14, 8))
            .isSameDayAs(DateTime(2010, 12, 14, 9)),
        true);
    expect(
        CalendarTime(DateTime(2010, 12, 14, 8).toUtc())
            .isSameDayAs(DateTime(2010, 12, 14, 9)),
        true);
    expect(
        CalendarTime(DateTime(2010, 12, 15, 8))
            .isSameDayAs(DateTime(2010, 12, 14, 9)),
        false);
  });
}
