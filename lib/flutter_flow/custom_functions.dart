import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<CalendarDayStruct> getCalendarForMonth(DateTime inputDate) {
  // Get first day of the month
  final firstDayOfMonth = DateTime(inputDate.year, inputDate.month, 1);

  // Find the Monday before or on the first day of the month
  int weekday = firstDayOfMonth.weekday;
  DateTime startCalendarDate =
      firstDayOfMonth.subtract(Duration(days: weekday - 1));

  // Total number of calendar cells = 5 rows * 7 days = 35 days
  List<CalendarDayStruct> calendar = [];

  for (int i = 0; i < 35; i++) {
    DateTime currentDate = startCalendarDate.add(Duration(days: i));

    bool isPreviousMonth = currentDate.month < inputDate.month ||
        (inputDate.month == 1 &&
            currentDate.month == 12 &&
            currentDate.year < inputDate.year);

    bool isNextMonth = currentDate.month > inputDate.month ||
        (inputDate.month == 12 &&
            currentDate.month == 1 &&
            currentDate.year > inputDate.year);

    calendar.add(CalendarDayStruct(
      calendarDate: currentDate,
      isPreviousMonth: isPreviousMonth,
      isNextMonth: isNextMonth,
    ));
  }

  return calendar;
}

DateTime getNextMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 12) {
    year++;
    month = 1;
  } else {
    month++;
  }
  return DateTime(year, month);
}

DateTime getLastMonthDateTime(DateTime inputDate) {
  int year = inputDate.year;
  int month = inputDate.month;

  if (month == 1) {
    year--;
    month = 12;
  } else {
    month--;
  }
  return DateTime(year, month);
}

DateTime getDateOnly(DateTime? dateTimeInput) {
  if (dateTimeInput == null) return DateTime.now();

  return DateTime(dateTimeInput.year, dateTimeInput.month, dateTimeInput.day);
}

DateTime getNextDateOnly(DateTime? dateTimeInput) {
  if (dateTimeInput == null) {
    return DateTime.now().add(Duration(days: 1));
  }
  final newDate = dateTimeInput.add(Duration(days: 1));
  return DateTime(newDate.year, newDate.month, newDate.day);
}

double getTotalPercentage(List<double> categoryWeights) {
  final double total = categoryWeights.fold(0, (sum, val) => sum + val);

  if (total == 0) {
    return 0;
  }

  return total;
}

String getRandomCode() {
  final chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  final rand = DateTime.now().millisecondsSinceEpoch;
  final codeUnits = List<int>.generate(8, (index) {
    final charIndex = (rand + index * 17) % chars.length;
    return chars.codeUnitAt(charIndex);
  });
  return String.fromCharCodes(codeUnits);
}

Color getTheTextForBackground(Color bgColor) {
// Calculate brightness using luminance formula
  final double brightness =
      (bgColor.red * 0.299 + bgColor.green * 0.587 + bgColor.blue * 0.114) /
          255;

  // If brightness is low (dark background), use white text
  return brightness < 0.5 ? Colors.white : Colors.black;
}

Color stringToColor(String hexCode) {
  try {
    hexCode = hexCode.replaceAll('#', '');
    if (hexCode.length != 6 && hexCode.length != 8) {
      return Color(0xFFE53935); // default to white if length is wrong
    }
    return Color(int.parse('0xff$hexCode'));
  } catch (e) {
    return Color(0xFFE53935); // default to white if parsing fails
  }
}

DateTime upcomingWeek(DateTime currentDate) {
  // This function will take the current date and return the date a week later
  return currentDate.add(Duration(days: 7));
}
