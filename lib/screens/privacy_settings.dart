import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

class PrivacySettings extends StatefulWidget {
  PrivacySettings({Key? key}) : super(key: key);

  @override
  _PrivacySettingsState createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('privacy Settings'),
          ),
          body: Center(
            child: Container(
              child: const Text('Privacy Settings'),
            ),
          ),
        ),
      ),
    );
  }
}
