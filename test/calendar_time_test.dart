import 'package:calendar_time/calendar_time.dart';
import 'package:test/test.dart';

void main() {

  test('converts time to human value', (){
    final calendarTime = CalendarTime(DateTime.now());
    expect(calendarTime.toHuman.contains('Today'), true);
  });

}
