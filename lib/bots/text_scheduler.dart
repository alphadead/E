import 'package:endroid/bots/month_and_no.dart';

class Scheduler {
   getTime() {
    var currentTime = DateTime.now();
    List availableMinutes = [];
    List availableHours = [];
    List availableDays = [];
    for (var i = currentTime.minute + 1; i < 60; i++) {
      availableMinutes.add(i);
    }
    print(availableMinutes);
    for (var i = currentTime.hour; i < 24; i++) {
      availableHours.add(i);
    }
    print(availableHours);
    String currentMonth = Numberify().findMonthName(currentTime.month);
    String nextMonth =
        Numberify().findMonthName(currentTime.month == 12 ? 1 : currentTime.month + 1);
    print(currentMonth);
    print(nextMonth);

    var daysInTheMonth =
        Numberify().getNoofDaysInMonth(currentTime.month, currentTime.year);
    print(daysInTheMonth);
    for (var i = currentTime.day; i <= daysInTheMonth; i++) {
      availableDays.add(i);
    }
    print(availableDays);
    daysInTheMonth = Numberify().getNoofDaysInMonth(
        currentTime.month == 12 ? 1 : currentTime.month + 1,
        currentTime.month == 12 ? currentTime.year + 1 : currentTime.year);
    print(daysInTheMonth);
    List availabledaysNextMonth = [];
    for (var i = 1; i <= daysInTheMonth; i++) {
      availabledaysNextMonth.add(i);
    }

    List toreturn = [
      // list containing the minutes left in the present hour
      availableMinutes,
    // list containing the hours left in the present day
      availableHours,
      // string name of the present month
      currentMonth,
      // list of the available days in the current month
      availableDays,
      // string name of the next month
      nextMonth,
      // list of the next days in the current month
      availabledaysNextMonth
    ];
    print(toreturn);
    return toreturn;
  }
  // scheduleMessage(String month,int day,int hour,int min){

  //   int monthNo=Numberify().convertMonthToNumber(month);
  //   var currentTime = DateTime.now();
  //   int currentMin=currentTime.minute;
  //   int currentHour=currentTime.hour;
  //   int currentDay=currentTime.day;
  //   int currentMon=currentTime.month;
  //   if(monthNo==currentMon){

  //   }

  // }
}
