import 'package:flutter/material.dart';
import 'package:xc_flutter_app/pages/HomePage.dart';
import 'package:xc_flutter_app/pages/MyPage.dart';
import 'package:xc_flutter_app/pages/SearchPage.dart';
import 'package:xc_flutter_app/pages/TravelPage.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  int _currentIndex = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
            label: '首页'
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: '分类',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_mall,
            ),
            label: '积分商城',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '我的',

          ),

        ],
        selectedIconTheme: IconThemeData(
          color: Colors.blue
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.blue,
          fontSize: 12
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.black87
        ),
        unselectedLabelStyle: TextStyle(
            color: Colors.black87,
            fontSize: 12
        ),
      ),
    );
  }

}

