import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class AppInfo extends StatefulWidget {
  AppInfo({Key? key}) : super(key: key);

  @override
  _AppInfoState createState() => _AppInfoState();
}

class _AppInfoState extends State<AppInfo> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('App Info'),
          ),
          body: Center(
            child: Container(
              child: const Text('App Info'),
            ),
          ),
        ),
      ),
    );
  }
}
