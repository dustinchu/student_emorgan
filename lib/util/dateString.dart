import 'package:intl/intl.dart';

class GetDateStr {
  int dateIndex = 0;
  int dateNumIndex = 0;
  String getDateStr(int addDate) {
    String date = DateFormat("E.", "en_US")
        .format(DateTime.now().add(new Duration(days: addDate + dateIndex)));
    if (date == "Sun.") {
      date = DateFormat("E.", "en_US").format(
          DateTime.now().add(new Duration(days: addDate + dateIndex + 1)));
      dateIndex = 1;
    }

    return date;
  }

  //得到日期 2/13
  String getDateNumStr(int addDate) {
    String date = DateFormat("E.", "en_US")
        .format(DateTime.now().add(new Duration(days: addDate + dateIndex)));

    if (date == "Sun.") {
      dateIndex = 1;
    }

    return DateFormat("Md")
        .format(DateTime.now().add(new Duration(days: addDate + dateIndex)));
  }
}
