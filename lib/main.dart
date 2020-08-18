import 'package:flutter/material.dart';
import 'package:flutter_date_multiple_days/page_view_sample_page.dart';
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
      initialRoute: '/calendar',
      routes: {'/calendar': (context) => CalendarPage(), '/page_view': (context) => PageViewSamplePage()},
      home: CalendarPage(),
    );
  }
}
