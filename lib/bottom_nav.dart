import 'package:asal_gores/notifikasiView.dart';
import 'package:flutter/material.dart';
import 'package:asal_gores/home_view.dart';
import 'package:asal_gores/akunPage_view.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedTabIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomePage(),
      NotificationPage(),
      AkunPage(),
    ];

    final _bottomNavItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
      BottomNavigationBarItem(
          icon: Icon(Icons.notifications_rounded), label: 'Notifikasi'),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
    ];

    final _bottomNav = BottomNavigationBar(
      backgroundColor: Color(0xff202020),
      items: _bottomNavItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Color(0xffffd100),
      unselectedItemColor: Colors.grey,
      onTap: _onNavTapped,
    );

    return Scaffold(
      body: Center(child: _listPage[_selectedTabIndex]),
      bottomNavigationBar: _bottomNav,
    );
  }
}
