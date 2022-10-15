import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 24.0, top: 16.0),
            child: Text(
              'What do you want to watch?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                cursorColor: Colors.white,
                decoration: _searchInputDecorate,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
