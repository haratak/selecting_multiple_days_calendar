import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/calendar/date_state.dart';
import 'package:flutter_date_multiple_days/entity/day_label.dart';
import 'package:flutter_date_multiple_days/entity/month.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final PageController pageController = PageController(initialPage: 0);
  List<DateTime> selectedDateList = [];
  List<Month> monthsList = [];
  List<List<DayLabel>> dayLabelList = [];
  DateTime now = DateTime.now();
  int pageNumber = 0;

  final double itemHeight = 45.0;

  @override
  void initState() {
    super.initState();
    monthsList = createMonthList();
    dayLabelList = createDayLabel(monthsList);
  }

  List<Month> createMonthList() {
    List<DateTime> dateList = List.generate(10, (i) => DateTime(DateTime.now().year, DateTime.now().month + i, 1));

    return dateList.map((DateTime date) {
      int monthLastNumber = DateTime(date.year, date.month + 1, 1).add(Duration(days: -1)).day;
      return Month(date, monthLastNumber, false);
    }).toList();
  }

  List<List<DayLabel>> createDayLabel(List<Month> monthsList) {
    return monthsList.map((Month month) {
      return List.generate(
          month.monthLastDay, (i) => DayLabel(DateTime(month.month.year, month.month.month, i + 1), false));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
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
                  children: _createPage(monthsList),
                ),
              ),
            ],
          ),
        ));
  }

  List<Widget> _createPage(List<Month> monthsList) {
    final pages = <Widget>[];
    monthsList.asMap().forEach((int index, Month month) {
      pages.add(
        SingleChildScrollView(
          child: Column(
            children: buildCalendar(month, dayLabelList[index]),
          ),
        ),
      );
    });
    return pages;
  }

  List<Widget> buildCalendar(Month month, List<DayLabel> dayLabelList) {
    final _list = <Widget>[];
    final _widgetList = <Widget>[];
    final _dayOfTheWeek = <String>['日', '月', '火', '水', '木', '金', '土'];
    List<Widget> _weekList = List.generate(
        _dayOfTheWeek.length,
        (i) => Expanded(
              child: Container(
                child: Text(
                  _dayOfTheWeek[i],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ));

    _list.add(
      Row(
        children: _weekList,
      ),
    );

    List<Widget> _listCache = [];

    for (int i = 0; i < month.monthLastDay; i++) {
      _listCache.add(Expanded(
        child: buildCalendarItem(dayLabelList[i]),
      ));
      if (dayLabelList[i].day.weekday == 6 || i + 1 == month.monthLastDay) {
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

    _widgetList.add(SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: _list,
          ),
        ],
      ),
    ));
    return _widgetList;
  }

  Widget buildCalendarItem(DayLabel dayLabel) {
    return GestureDetector(
      child: CircleAvatar(
        radius: 18,
        backgroundColor: dayLabel.isSelected ? Colors.red : Colors.white,
        child: Container(
          alignment: Alignment.center,
          height: itemHeight,
          child: Text(
            '${dayLabel.day.day}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0, fontWeight: dayLabel.isSelected ? FontWeight.bold : FontWeight.normal),
          ),
        ),
      ),
      onTap: () {
        setState(() {
          if (dayLabel.isSelected) {
            dayLabel.isSelected = false;
          } else {
            dayLabel.isSelected = true;
          }
        });
      },
    );
  }
}
