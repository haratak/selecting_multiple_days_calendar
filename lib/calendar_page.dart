import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/calendar/day_labels_state.dart';
import 'package:flutter_date_multiple_days/entity/day_label.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final PageController pageController = PageController(initialPage: 0);
  List<DateTime> selectedDateList = [];
  DateTime now = DateTime.now();

  final double itemHeight = 45.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Widget'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Icon(
                      Icons.arrow_left,
                      size: 50.0,
                    ),
                    onTap: () =>
                        pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.ease)),
                Text(
                  DateFormat('yyyy年M月').format(DateTime(
                      now.year, now.month + context.select<DayLabelsState, int>((state) => state.monthNumber), 1)),
                  style: TextStyle(fontSize: 22.0),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Icon(
                    Icons.arrow_right,
                    size: 50.0,
                  ),
                  onTap: () => pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              onPageChanged: (pageId) {
                context.read<DayLabelsController>().changeMonthNumber(pageId);
              },
              controller: pageController,
              children: _createMonthPage(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _createMonthPage() {
    final lists = context.select<DayLabelsState, List<List<DayLabel>>>((state) => state.dayLabelLists);

    return lists.map((list) {
      return SingleChildScrollView(
        child: Column(children: buildCalendar(list)),
      );
    }).toList();
  }

  List<Widget> buildCalendar(List<DayLabel> dayLabelList) {
    final lastDayInMonth = dayLabelList.last.date.day;
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

    for (int i = 0; i < lastDayInMonth; i++) {
      _listCache.add(Expanded(
        child: buildCalendarItem(dayLabelList[i]),
      ));
      if (dayLabelList[i].date.weekday == 6 || i + 1 == lastDayInMonth) {
        int repeatNumber = 7 - _listCache.length;
        for (int j = 0; j < repeatNumber; j++) {
          if (dayLabelList[i].date.day <= 7) {
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
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: dayLabel.isSelected ? Colors.redAccent : Colors.white60,
            child: Container(
              alignment: Alignment.center,
              height: itemHeight,
              child: Text(
                '${dayLabel.date.day}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: dayLabel.isSelected ? FontWeight.bold : FontWeight.normal,
                    color: Colors.black),
              ),
            ),
          ),
        ),
        onTap: () => context.read<DayLabelsController>().changeBool(dayLabel));
  }
}
