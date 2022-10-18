import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mymovie_imdb/ui/home/widget/movie_item_widget.dart';
import '../common/loading_overlay.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const _searchInputDecorate = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    ),
    filled: true,
    fillColor: Color(0xFF3A3F47),
    hintText: 'Search',
    hintStyle: TextStyle(
      color: Color(0xFF67686D),
      fontSize: 14,
    ),
    contentPadding: EdgeInsets.all(20.0),
    suffixIcon: Icon(
      Icons.search,
      color: Color(0xFF67686D),
    ),
  );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showLoading() {
    LoadingOverlay.of(context).show();
    Timer(const Duration(seconds: 3), () {
      LoadingOverlay.of(context).hide();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 24.0, top: 16.0),
            child: Text(
              'What do you want to watch?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                readOnly: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                cursorColor: Colors.white,
                decoration: HomePage._searchInputDecorate,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 180,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                MovieItemWidget(bgColor: Colors.red),
                MovieItemWidget(bgColor: Colors.blue),
                MovieItemWidget(bgColor: Colors.green),
                MovieItemWidget(bgColor: Colors.yellow),
                MovieItemWidget(bgColor: Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
