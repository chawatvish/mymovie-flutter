import 'package:flutter/material.dart';
import 'package:mymovie_imdb/ui/apptheme.dart';
import 'package:mymovie_imdb/ui/splash/splash_page.dart';

import 'ui/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Movie",
      initialRoute: '/',
      theme: AppTheme.lightMode,
      routes: {
        '/': (context) => const SplashPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
