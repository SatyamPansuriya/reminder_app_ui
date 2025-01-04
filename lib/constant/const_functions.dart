import 'package:intl/intl.dart';

String dayNumber(DateTime date) {
  String formattedDate = DateFormat('d').format(date);
  return formattedDate.padLeft(2, "0");
}

String dayName(
  DateTime date,
) {
  String formattedDate = DateFormat('EEEE').format(date);
  return formattedDate;
}

String halfDayName(
  DateTime date,
) {
  String formattedDate = DateFormat('EE').format(date);
  return formattedDate;
}

String fullMonthName(DateTime date) {
  String formattedDate = DateFormat('MMMM').format(date);
  return formattedDate;
}

String yearNumber(DateTime date) {
  String formattedDate = DateFormat('y').format(date);
  return formattedDate;
}

String fullDate(DateTime date) {
  String formattedDate = DateFormat('d MMMM, y').format(date);
  return formattedDate;
}

String monthNameWithYear(
  DateTime date,
) {
  String formattedDate = DateFormat('MMMM, y').format(date);

  return formattedDate;
}

// ICU Name                   Skeleton
// --------                   --------
// DAY                          d
// ABBR_WEEKDAY                 E
// WEEKDAY                      EEEE
// ABBR_STANDALONE_MONTH        LLL
// STANDALONE_MONTH             LLLL
// NUM_MONTH                    M
// NUM_MONTH_DAY                Md
// NUM_MONTH_WEEKDAY_DAY        MEd
// ABBR_MONTH                   MMM
// ABBR_MONTH_DAY               MMMd
// ABBR_MONTH_WEEKDAY_DAY       MMMEd
// MONTH                        MMMM
// MONTH_DAY                    MMMMd
// MONTH_WEEKDAY_DAY            MMMMEEEEd
// ABBR_QUARTER                 QQQ
// QUARTER                      QQQQ
// YEAR                         y
// YEAR_NUM_MONTH               yM
// YEAR_NUM_MONTH_DAY           yMd
// YEAR_NUM_MONTH_WEEKDAY_DAY   yMEd
// YEAR_ABBR_MONTH              yMMM
// YEAR_ABBR_MONTH_DAY          yMMMd
// YEAR_ABBR_MONTH_WEEKDAY_DAY  yMMMEd
// YEAR_MONTH                   yMMMM
// YEAR_MONTH_DAY               yMMMMd
// YEAR_MONTH_WEEKDAY_DAY       yMMMMEEEEd
// YEAR_ABBR_QUARTER            yQQQ
// YEAR_QUARTER                 yQQQQ
// HOUR24                       H
// HOUR24_MINUTE                Hm
// HOUR24_MINUTE_SECOND         Hms
// HOUR                         j
// HOUR_MINUTE                  jm
// HOUR_MINUTE_SECOND           jms
// HOUR_MINUTE_GENERIC_TZ       jmv
// HOUR_MINUTE_TZ               jmz
// HOUR_GENERIC_TZ              jv
// HOUR_TZ                      jz
// MINUTE                       m
// MINUTE_SECOND                ms
// SECOND                       s
