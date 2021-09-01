import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class NewNotificationPage extends StatefulWidget {
  NewNotificationPage({Key? key}) : super(key: key);

  @override
  _NewNotificationPageState createState() => _NewNotificationPageState();
}

class _NewNotificationPageState extends State<NewNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('New Notification'),
          ),
          body: Center(
            child: Container(
              child: const Text('New Notification'),
            ),
          ),
        ),
      ),
    );
  }
}
