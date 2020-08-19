import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/date_state.dart';
import 'package:flutter_date_multiple_days/page_view_sample_page.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'calendar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Selecting multiple days',
      routes: {'/calendar': (context) => CalendarPage(), '/page_view': (context) => PageViewSamplePage()},
      home: StateNotifierProvider<DateStateNotifier, DateState>(
        create: (_) => DateStateNotifier(),
        child: CalendarPage(),
      ),
    );
  }
}
