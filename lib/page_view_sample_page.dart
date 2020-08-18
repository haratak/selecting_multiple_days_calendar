import 'package:flutter/material.dart';

int _lowerCount = -2;
int _upperCount = 2;

class PageViewSamplePage extends StatefulWidget {
  @override
  PageViewSamplePageState createState() {
    return new PageViewSamplePageState();
  }
}

class PageViewSamplePageState extends State<PageViewSamplePage> {
  final List<int> _pages = <int>[-2, -1, 0, 1, 2];

  final PageController pageController = PageController(initialPage: 2, viewportFraction: 0.99);

  Widget _buildPages(page) {
    return Center(
      child: Text(page.toString(), style: new TextStyle(fontSize: 60.0)),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      print("inside listener");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: 50.0,
        ),
        child: PageView(
          onPageChanged: (pageId) {
            if (pageId == _pages.length - 1) {
              print("Last page, add page to end");
              _upperCount = _upperCount + 1;
              setState(() {
                _pages.add(_upperCount);
              });
            }
            if (pageId == 1) {
              print("First page, add page to start");
              _lowerCount = _lowerCount - 1;
              setState(() {
                _pages.add(_lowerCount);
                _pages.sort((a, b) {
                  return a.compareTo(b);
                });
              });
//              pageController.jumpToPage(1);

            }
            print(_pages);
            print(pageId.toString());
          },
          controller: pageController,
          children: List<Widget>.generate(_pages.length, (index) {
            return _buildPages(_pages[index]);
          }),
        ),
      ),
    );
  }
}
