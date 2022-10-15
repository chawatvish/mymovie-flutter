import 'package:flutter/material.dart';
import 'package:mymovie_imdb/ui/home/home_page.dart';
import 'package:mymovie_imdb/ui/setting/setting_page.dart';
import 'package:mymovie_imdb/ui/watchlist/watchlist_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SettingPage(),
    WatchListPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Watch list',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF0296E5),
        onTap: _onItemTapped,
      ),
    );
  }
}
