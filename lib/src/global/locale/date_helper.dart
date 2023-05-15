import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

String getTime(String? dateTime) {
  try {
    DateTime date = DateTime.parse(dateTime ?? "");
    return DateFormat('hh:mm a').format(date);
  } catch (e) {
    return "";
  }
}

DateTime getDate(String? dateTime) {
  try {
    DateTime date = DateTime.parse(dateTime ?? "");
    return date;
  } catch (e) {
    return DateTime.now();
  }
}

String getMonthText(int tm) {
  String month = "";
  switch (tm) {
    case 1:
      month = "january";
      break;
    case 2:
      month = "february";
      break;
    case 3:
      month = "march";
      break;
    case 4:
      month = "april";
      break;
    case 5:
      month = "may";
      break;
    case 6:
      month = "june";
      break;
    case 7:
      month = "july";
      break;
    case 8:
      month = "august";
      break;
    case 9:
      month = "september";
      break;
    case 10:
      month = "october";
      break;
    case 11:
      month = "november";
      break;
    case 12:
      month = "december";
      break;
  }

  return month;
}

String getMonthTextArabic(int tm) {
  String month = "";
  switch (tm) {
    case 1:
      month = "يناير";
      break;
    case 2:
      month = "فبراير";
      break;
    case 3:
      month = "مارس";
      break;
    case 4:
      month = "ابريل";
      break;
    case 5:
      month = "مايو";
      break;
    case 6:
      month = "يونيو";
      break;
    case 7:
      month = "يوليو";
      break;
    case 8:
      month = "أغسطس";
      break;
    case 9:
      month = "سبتمبر";
      break;
    case 10:
      month = "أكتوير";
      break;
    case 11:
      month = "نوفمبر";
      break;
    case 12:
      month = "ديسمبر";
      break;
  }

  return month;
}

String getMonthLang(int tm, BuildContext context) {
  // if (getLocalLanguage(context) == 0) {
  return getMonthText(tm);
  // } else {
  //   return getMonthTextArabic(tm);
  // }
}
