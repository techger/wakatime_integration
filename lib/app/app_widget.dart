import 'package:flutter/material.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DoutTime',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryIconTheme: IconThemeData(
          color: Colors.white
        ),
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      home: HomeModule(),
    );
  }
}
