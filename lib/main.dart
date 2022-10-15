import 'package:flutter/material.dart';
import 'package:mymovie_imdb/ui/apptheme.dart';
import 'package:mymovie_imdb/ui/home/splash_page.dart';

import 'ui/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Movie",
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
