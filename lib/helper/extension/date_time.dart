import 'package:intl/intl.dart';

extension CompareDates on DateTime {
  int compareDate(DateTime date) {
    final date1 = toDay;
    final date2 = date.toDay;
    if (date1.compareTo(date2) == 0) {
      return 0;
    }
    if (date1.year > date2.year || date1.month > date2.month) {
      return 1;
    } else if (date1.year < date2.year || date1.month < date2.month) {
      return -1;
    } else if (date1.year == date2.year && date1.month == date2.month) {
      if (date1.day > date2.day) {
        return 1;
      } else if (date1.day < date2.day) {
        return -1;
      }
    }
    return 0;
  }
}

extension FormatDate on DateTime {
  // 0h
  DateTime get toDay {
    return DateTime(year, month, day);
  }

  String get monthDisplayString {
    final currentDate = DateTime.now();
    if (currentDate.year == year && currentDate.month == month) {
      return 'Tháng hiện tại';
    }
    final lastMonth = currentDate.startOfMonth.subtractMonth(1);
    if (lastMonth.year == year && lastMonth.month == month) {
      return 'Tháng trước';
    }

    return toDateString();
  }

  //Date + 23h 59p 59s
  DateTime get endDay {
    return DateTime(year, month, day)
        .add(const Duration(days: 1))
        .subtract(const Duration(seconds: 1));
  }

  DateTime get startOfMonth {
    return DateTime(year, month);
  }

  DateTime get endOfMonth {
    final totalDaysOfMonth = DateTime(year, month + 1, 0).day;
    return DateTime(year, month, totalDaysOfMonth);
  }

  String toDateString({String? locale, String pattern = dd_mm_yyyy}) {
    return DateFormat(
      pattern,
      locale,
    ).format(this);
  }

  String get toTimeDateString {
    return DateFormat(EEEE_dd_MM_yyyy, 'vi').format(this);
  }

  String format({String? locale, required String pattern}) {
    return DateFormat(pattern, locale).format(this);
  }

  // return date time with the same time but with utc format
  // if you want convert to utc time zone, use toUtc()
  DateTime get asUtc {
    return DateTime.utc(year, month, day, hour, minute, second);
  }

  int getDifDays(DateTime end) {
    final dif = end.difference(this);
    return dif.inHours < 24 ? 1 : dif.inDays + 1;
  }

  DateTime addMonth(int count) {
    final finalDate = DateTime(year, month + count, day - 1);
    return finalDate;
  }

  DateTime subtractMonth(int count) {
    final finalDate = DateTime(year, month - count, day + 1);
    return finalDate;
  }

  String getDiffFromToday() {
    final diffDays = DateTime.now().difference(this).inDays;
    final diffHours = DateTime.now().difference(this).inHours;
    final diffMins = DateTime.now().difference(this).inMinutes;

    if (diffDays > 30) {
      return '${(diffDays / 30).round()} tháng trước';
    }
    if (diffDays < 30 && diffDays > 0) {
      return '$diffDays ngày trước';
    }
    if (diffDays == 0 && diffHours <= 24 && diffHours > 0) {
      return '$diffHours tiếng trước';
    }
    if (diffHours == 0 && diffMins <= 60 && diffMins > 0) {
      return '$diffMins phút trước';
    }
    return 'vài giây trước';
  }

  String getTimePresenceFromToday() {
    final diffDays = DateTime.now().difference(this).inDays;
    final diffHours = DateTime.now().difference(this).inHours;
    final diffMins = DateTime.now().difference(this).inMinutes;
    final diffSeconds = DateTime.now().difference(this).inSeconds;

    if (diffDays > 365) {
      return 'Truy cập ${(diffDays / 365).round()} năm trước';
    }
    if (diffDays > 30) {
      return 'Truy cập ${(diffDays / 30).round()} tháng trước';
    }
    if (diffDays > 0 && diffDays < 30) {
      return 'Truy cập $diffDays ngày trước';
    }
    if (diffDays == 0 && diffHours <= 24 && diffHours > 0) {
      return 'Truy cập $diffHours tiếng trước';
    }
    if (diffHours == 0 && diffMins <= 60 && diffMins >= 1) {
      return 'Truy cập $diffMins phút trước';
    }
    if (diffSeconds < 30) {
      return 'Đang hoạt động';
    }
    if (diffMins < 1) {
      return 'Vừa truy cập';
    }
    return '';
  }

  RentalTime calculateRentTime(DateTime endDate) {
    // assert(compareTo(endDate) <= 0);
    if (compareTo(endDate) > 0) {
      return const RentalTime(yearCount: 0, monthCount: 0, dayCount: 0);
    }

    // day count
    var dayCount = 0;
    // month count
    var monthCount = 0;
    // year count
    var yearCount = 0;

    var current = toDay;
    final end = endDate.endDay;
    while (current.compareTo(end) < 0) {
      final daysOfCurrentMonth =
          DateTime(current.year, current.month + 1, 0).day;
      final nextMonth = current.add(Duration(days: daysOfCurrentMonth));

      if (nextMonth.compareTo(end) > 0) {
        final difDays = current.getDifDays(end);
        if (difDays < daysOfCurrentMonth) {
          dayCount += difDays;
        } else {
          final monthPlus = (daysOfCurrentMonth / difDays).round();

          final dayPlus = daysOfCurrentMonth % difDays;

          dayCount += dayPlus;
          monthCount += monthPlus;
        }
      } else {
        monthCount++;
      }
      current = nextMonth;
    }

    if (monthCount >= 12) {
      yearCount = monthCount ~/ 12;
      monthCount = monthCount % 12;
    }
    return RentalTime(
      yearCount: yearCount,
      monthCount: monthCount,
      dayCount: dayCount,
    );
  }

  List<String> getDateRangeOfCurrentMonth() {
    return [
      startOfMonth.format(pattern: yyyy_mm_dd),
      endOfMonth.format(pattern: yyyy_mm_dd)
    ];
  }

  List<String> rangeFromStartMonthToToday() {
    return [
      startOfMonth.format(pattern: yyyy_mm_dd),
      endDay.format(pattern: yyyy_mm_dd)
    ];
  }
}

// @freezed
// class DateTimeCalculateType with _$DateTimeCalculateType {
//   const factory DateTimeCalculateType.normal({required int dateClose}) =
//       DateTimeCalculateTypeNormal;
//   const factory DateTimeCalculateType.detail() = DateTimeCalculateTypeDetail;
// }

class RentalTime {
  const RentalTime({
    required this.yearCount,
    required this.monthCount,
    required this.dayCount,
  });
  final int yearCount;
  final int monthCount;
  final int dayCount;

  String formatToString({String locale = 'vi_VN'}) {
    var result = '';
    if (yearCount > 0) {
      result += '$yearCount năm';
    }
    if (monthCount > 0) {
      result += '${yearCount > 0 ? ',' : ''} $monthCount tháng';
    }
    if (dayCount > 0) {
      result += '${monthCount > 0 ? ',' : ''} $dayCount ngày';
    }
    return result.trim();
  }

  String formatOnlyToString({String locale = 'vi_VN'}) {
    var result = '';
    if (yearCount > 0) {
      return result += '$yearCount năm';
    }
    if (monthCount > 0) {
      return result += '$monthCount tháng';
    }
    if (dayCount > 0) {
      return result += '$dayCount ngày';
    }
    return result.trim();
  }
}

enum DateTimeType {
  day,
  month,
  year;

  String formatToString({String locale = 'vi_VN'}) {
    switch (this) {
      case DateTimeType.day:
        return 'ngày';
      case DateTimeType.month:
        return 'tháng';
      case DateTimeType.year:
        return 'năm';
    }
  }
}

class RentalSegmentTime {
  const RentalSegmentTime({
    required this.startDate,
    required this.endDate,
    required this.quantity,
  });
  final DateTime startDate;
  final DateTime endDate;
  final int quantity;
}

const dd_mm_yyyy = 'dd/MM/yyyy';
const dd_mm_yy = 'dd/MM/yy';

// const dayInWeek = 'E, "ngay" dd';
const EEEE_dd_MMM = 'EEEE, dd MMM';
const EEEE = 'EEEE';
const dd_mm = 'dd/MM';
const yyyy_mm_dd = 'yyyy-MM-dd';
const mm_yyyy = 'MM/yyyy';
const hh_mm_dd_MM_yyyy = 'HH:mm, $dd_mm_yyyy';
const yyyy_mm = 'yyyy-MM';
const EEEE_dd_MM_yyyy = 'EEEE, $dd_mm_yyyy';
const EEEE_hh_mm_dd_MM_yyyy = 'EEEE, HH:mm - $dd_mm_yyyy';
