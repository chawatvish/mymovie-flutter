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

  Widget _createBottomNavigationBar() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          border:
              Border(top: BorderSide(color: Color(0xFF0296E5), width: 1.0))),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Watch list',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: const Color(0xFF67686D),
        selectedItemColor: const Color(0xFF0296E5),
        unselectedFontSize: 15,
        selectedFontSize: 15,
        onTap: _onItemTapped,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: _createBottomNavigationBar(),
    );
  }
}
