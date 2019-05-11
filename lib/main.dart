import 'package:flutter/material.dart';
import 'package:whats_app/pages/home_page.dart';
import 'package:whats_app/utils/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DailyChat',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: primaryColor
        )
      ),
      home: HomePage(),      
    );
  }
}