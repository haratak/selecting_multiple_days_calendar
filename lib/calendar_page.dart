import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/calendar/date_state.dart';
import 'package:flutter_date_multiple_days/calendar/day_label_state.dart';
import 'package:flutter_date_multiple_days/entity/day_label.dart';
import 'package:flutter_date_multiple_days/entity/month.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

//todo 選択月のテキストとカレンダを分ける
//todo 土日の曜日、日付テキストを赤に（必須ではない）

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final PageController pageController = PageController(initialPage: 0);
  List<DateTime> selectedDateList = [];
  List<Widget> calendarList = [];
  List<Month> monthsList = [];
  List<List<DayLabel>> dayLabelList = [];
  DateTime now = DateTime.now();
  int pageNumber = 12;

  final double itemHeight = 45.0;

  @override
  void initState() {
    super.initState();
    createMonths(DateTime(now.year, now.month, 1));
    createDayLabel(monthsList);
  }

  createMonths(DateTime startMonth) {
    List<DateTime> monthsListTemp = [];
    for (var i = 0; i < 10; i++) {
      monthsListTemp.add(DateTime(now.year, now.month + i, 1));
    }
    for (var i = 0; i < 10; i++) {
      var monthLastNumber =
          DateTime(monthsListTemp[i].year, monthsListTemp[i].month + 1, 1).add(Duration(days: -1)).day;
      Month month = Month(monthsListTemp[i], i + 1, monthLastNumber);
      monthsList.add(month);
    }
  }

  createDayLabel(List<Month> monthsList) {
    for (var i = 0; i < monthsList.length; i++) {
      List<DayLabel> dayLabelListTemp = [];
      for (var ii = 0; ii < monthsList[i].monthLastNumber; ii++) {
        DayLabel dayLabel =
            DayLabel(DateTime(monthsList[i].month.year, monthsList[i].month.month, ii + 1), false, Colors.grey);
        dayLabelListTemp.add(dayLabel);
      }
      dayLabelList.add(dayLabelListTemp);
    }
  }

  @override
  Widget build(BuildContext context) {
//    buildCalendarList(now);

    return Scaffold(
        appBar: AppBar(
          title: Text('Selecting multiple days'),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_left,
                        size: 50.0,
                      ),
                      onTap: () {
                        context.read<DateStateNotifier>().decrement();
                        setState(() {
                          pageNumber--;
                        });
                        pageController.animateToPage(pageNumber,
                            duration: const Duration(milliseconds: 300), curve: Curves.ease);
                        setState(() {});
                      },
                    ),
                    Text(
                      DateFormat('yyyy年M月').format(DateTime(now.year, now.month + context.watch<DateState>().count, 1)),
                      style: TextStyle(fontSize: 22.0),
                    ),
                    GestureDetector(
                      child: Icon(
                        Icons.arrow_right,
                        size: 50.0,
                      ),
                      onTap: () {
                        context.read<DateStateNotifier>().increment();
                        setState(() {
                          pageNumber++;
                        });
                        pageController.animateToPage(pageNumber,
                            duration: const Duration(milliseconds: 800), curve: Curves.ease);
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (pageId) {
                    print('page 番号は$pageId');
                    print('page変数は$pageNumber');
                    if (pageNumber == pageId) {
                      return;
                    }
                    if (pageNumber < pageId) {
                      context.read<DateStateNotifier>().increment();
                      setState(() {
                        pageNumber++;
                      });
                    } else {
                      context.read<DateStateNotifier>().decrement();
                      setState(() {
                        pageNumber--;
                      });
                    }
                  },
                  controller: pageController,
                  children: buildCalendarList(),
                ),
              ),
            ],
          ),
        ));
  }

  List<Widget> buildCalendarList() {
    for (int i = 0; i < monthsList.length; i++) {
      calendarList.add(buildCalendar(monthsList[i], dayLabelList[i]));
    }
    return calendarList;
  }

  Widget buildCalendar(Month month, List<DayLabel> dayLabelList) {
    List<Widget> _list = [];

    List<String> _dayOfTheWeek = ['日', '月', '火', '水', '木', '金', '土'];
    List<Widget> _weekList = [];
    for (int i = 0; i < 7; i++) {
      _weekList.add(Expanded(
        child: Container(
          child: Text(
            _dayOfTheWeek[i],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ));
    }
    _list.add(
      Row(
        children: _weekList,
      ),
    );

    List<Widget> _listCache = [];
    for (int i = 0; i < month.monthLastNumber; i++) {
      _listCache.add(Expanded(
        child: buildCalendarItem(dayLabelList[i]),
      ));
      print(dayLabelList[i].day.weekday == 6 || i == month.monthLastNumber);
      if (dayLabelList[i].day.weekday == 6 || i + 1 == month.monthLastNumber) {
        int repeatNumber = 7 - _listCache.length;
        for (int j = 0; j < repeatNumber; j++) {
          if (dayLabelList[i].day.day <= 7) {
            _listCache.insert(
                0,
                Expanded(
                  child: Container(height: itemHeight),
                ));
          } else {
            _listCache.add(Expanded(
              child: Container(
                height: itemHeight,
              ),
            ));
          }
        }

        _list.add(Row(
          children: _listCache,
        ));
        _listCache = [];
      }
    }

    return SingleChildScrollView(
      child: Column(
        children: _list,
      ),
    );
  }

  buildCalendarItem(DayLabel dayLabel) {
    return InkWell(
      child: CircleAvatar(
        radius: 18,
        backgroundColor: dayLabel.labelColor,
        child: Container(
          alignment: Alignment.center,
          height: itemHeight,
          child: Text(
            '${dayLabel.day.day}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
//                color: dayLabel.labelColor,
                fontWeight: dayLabel.isSelected ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          print(dayLabel.isSelected);
          print(dayLabel.labelColor);
          print(dayLabel.day);
          if (dayLabel.isSelected) {
            dayLabel.isSelected = false;
            dayLabel.labelColor = Colors.grey;
          } else {
            dayLabel.isSelected = true;
            dayLabel.labelColor = Colors.redAccent;
          }
        });
      },
    );
  }
}
