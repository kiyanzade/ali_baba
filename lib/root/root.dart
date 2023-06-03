import 'package:ali_baba/home/home.dart';
import 'package:ali_baba/myTravel/my_travel.dart';
import 'package:ali_baba/plus/plus.dart';
import 'package:ali_baba/profile/profile.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    PlusScreen(),
    MyTravelScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'خانه',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: 'پلاس',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore),
            label: 'سفرهای من',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'حساب کاربری',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.5,
        unselectedFontSize: 10,
      ),
    );
  }
}
