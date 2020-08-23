import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/calendar/date_state.dart';
import 'package:flutter_date_multiple_days/calendar/day_labels_state.dart';
import 'package:flutter_date_multiple_days/entity/day_label_list.dart';
import 'package:flutter_date_multiple_days/page_view_sample_page.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'calendar_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    StateNotifierProvider<DateStateNotifier, DateState>(
      create: (_) => DateStateNotifier(),
    ),
    StateNotifierProvider<DayLabelsController, DayLabelsState>(
      create: (_) => DayLabelsController(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Selecting multiple days',
      initialRoute: '/calendar',
      routes: {'/calendar': (context) => CalendarPage(), '/page_view': (context) => PageViewSamplePage()},
    );
  }
}
